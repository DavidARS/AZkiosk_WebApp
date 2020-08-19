var AssessmentText;
d3.csv("Scripts/Custom/Assessment/AssessmentText.csv", function (data) {
    AssessmentText = data;
});

function drawAssessment(jsondata) {
    var stateString = providerRegion;
    var indicatorDisplayed = CT[stateString].INDFLDS;
    var scaleValue = d3.scale.linear()
            .domain([0, 50, 100])
            .range([0, 100, 0]);
    var rgrScale = d3.scale.linear()
            .domain([0, 100])
            .range([4, 0]);

    //var done = [];
    //for (di = 0; di < indicatorDisplayed.length; di++) {
    //    done[CT[stateString].INDFLDS[di]] = 0;
    //}  
    $.each(jsondata.RESULTS, function () {
        if (indicatorDisplayed.indexOf(this.FLD) > -1) {
            var values = this.VALS[0].VALS;
            var lastIndex = values.length - 1;
            var value = values[lastIndex];
            var textIndex = 0;
            var container = $('.assessment-indicator[data-fld=' + this.FLD + ']');

            if (value < 20) {
                textIndex = 1;
            }
            else if (value < 40) {
                textIndex = 2;
            }
            else if (value < 60) {
                textIndex = 3;
            }
            else if (value < 80) {
                textIndex = 4;
            }
            else {
                textIndex = 5;
            }

            container.children('.assessment-indicator-prefix').text(AssessmentText[0][this.FLD]);
            container.children('.assessment-indicator-info').text(AssessmentText[textIndex][this.FLD]);


            if (indicatorParameters[this.FLD].options && indicatorParameters[this.FLD].options.meter && indicatorParameters[this.FLD].options.meter.style == 'rgr_meter') {
                console.log('drawAssessment:', this.FLD, value, Math.round(rgrScale(scaleValue(value))));
                container.find('[class*=indicator-meter-fill-color-]').each(function () {
                    var item = $(this);
                    item.attr('class', 'indicator-meter-fill-color-' + Math.round(rgrScale(scaleValue(value))));
                });
            }
            else {
                console.log('drawAssessment:', this.FLD, value, (5 - textIndex));
                container.find('[class*=indicator-meter-fill-color-]').each(function () {
                    var item = $(this);
                    item.attr('class', 'indicator-meter-fill-color-' + (5 - textIndex));
                });
            }
        }
        if (this.FLD == 'SAI_P') {
            var values = this.VALS[0].VALS;
            var lastIndex = values.length - 1;
            var value = values[lastIndex];

            var textIndex = 0;
            var statusText = '';
            var statusSpan = $('.assessment-status');

            if (value < 20) {
                textIndex = 1;
                statusText = 'Congratulations!​';
            }
            else if (value < 40) {
                textIndex = 2;
                statusText = 'Almost there!';
            }
            else if (value < 60) {
                textIndex = 3;
                statusText = 'You\'re making progress!';
            }
            else if (value < 80) {
                textIndex = 4;
                statusText = 'It\'s not looking good';
            }
            else {
                textIndex = 5;
                statusText = 'Uh oh!';
            }

            $('.assessment-status-info').text(AssessmentText[0]['SAI_P'] + ' ' + AssessmentText[textIndex]['SAI_P'])

            var scale = d3.scale.linear()
            .domain([0, 100])
            .range([0, 4]);

            //console.log('drawAssessment:', this.FLD, this);
            statusSpan.text(statusText);
            statusSpan.attr('class', 'assessment-status indicator-meter-color-color-' + Math.round(scale(value)));
            //$('.assessment-status-info').text()
        }
    });
}