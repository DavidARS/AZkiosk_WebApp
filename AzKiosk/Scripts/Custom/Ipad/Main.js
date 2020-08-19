// Hide input number from buttons
$('.input-number').hide();

var ChallengeState = 0;
var RestartAppValue = 2;
var NextChallengeButtonText = ['NEXT CHALLENGE', 'END GAME']

function nextChallengeClick() {
    //$('#next-challenge').hide();
    $('#next-challenge').attr('disabled', '');

    switch (ChallengeState) {
        case 0:
            SetSliderValue('DSCNInputUserControl_ControlContainer', 4);
            firstRun = true;
            runModel();

            showLastInputButton();

            $('#cactus-jack-img').attr('src', 'Images/Cactus_1.png');
            $('#cactus-jack-span-pre').text('Oh No!');
            $('#cactus-jack-span').text('A drought started in the year 2000 and continued to 2050!  In addition to population pressures on water use we now have drought effects on river flows (and lake levels). Decide what choices you can make to balance your system while optimizing the health and efficiency indicators.')
            $('#cactus-jack-span-container').show();
            $('#next-challenge').text(NextChallengeButtonText[1]);
            break;
        case 1:
            //$('#cactus-jack-img').attr('src', 'Images/Cactus_2.png');
            $('#top-div').hide();
            $('#mid-div').hide();
            $('#bot-div').hide();

            $('#thankyou-div').css('display', 'table');
            break;
    }

    ChallengeState++;
}

// Setup Next Challenge button
$('#next-challenge').click(nextChallengeClick);

// Setup Skip Challenge button
$('#skip-challenge').click(function () { $('#next-challenge').click() });