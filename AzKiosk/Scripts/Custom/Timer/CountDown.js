function buildInactivityDialog(){
    var width = $('body').width() - (40 + 21) * 2;
    var dialog = $(
        '<div class="timer-details-panel" style="left: 0px; top: 0px; height: 400px; width: 0px;">' +
        '<div class="timer-step-description" style="width: ' + width + 'px; left: 40px; top: 20px; background-color: yellow;">' +
        '<h2 style="color: black;">Are You Still There?</h2>' +
        '<div class="timer-step-text" style="color: black;"><p>' +
        'WaterSim will restart unless the "Yes" button is pressed in the next 10 seconds.' +
        '</p>' +
        '</div>' +
        generateButtonHTML(
            'yes-button',
            'Yes',
            'background-color: rgb(76, 175, 80); float: right; border-color: black;',
            'inactiveButtonClick()'
            ) +
        '</div>' +
        '</div>'
    );

    return dialog;
}

function buildDialog(title, content, hideSeconds, zIndexParam){
    var seconds = ' <span></span> seconds.';
    var zIndex = 15001;

    if(hideSeconds)
        seconds = '';

    if(zIndexParam)
        zIndex = zIndexParam;

    var width = $('body').width() - (40 + 21) * 2;
    var dialog = $(
        '<div class="timer-details-panel" style="left: 0px; top: 0px; height: 400px; width: 0px; z-index:' + zIndexParam + ' px;">' +
        '<div class="timer-step-description" style="width: ' + width + 'px; left: 40px; top: 20px; background-color: yellow;">' +
        '<h2 style="color: black;">' + title + '</h2>' +
        '<div class="timer-step-text" style="color: black;"><p>' +
        content + seconds +
        '</p>' +
        '</div>' +
        '</div>' +
        '</div>'
    );

    return dialog;
}

function getDialogSpan(timer){
    return timer.dialog.find('span');
}

function generateButtonHTML(id, value, style, callback){
    return '<input type="button" id="' + id + '" value="' + value + '"' +
    'style="margin: 5px; height: 40px; width: 200px; text-align: center; padding: 1px;' +
    'font-family: Arial; font-size: 30px; ' + style + '" onclick="' + callback + '"">';
}

function inactiveButtonClick(){
    inactivityTimer.currentTimeLimit++;
    closeDialog(inactivityTimer);

    setNextChallengeTimer();
    setNoRunTimer();
}

var inactivityTimer = {
    time: 0,
    interval: null,
    increment: 1000, // 1 second
    timeLimit: [180, 30], // in seconds
    // timeLimit: [10, 15, 20], // in seconds
    currentTimeLimit: 0,
    countdown: 10, // in seconds
    dialog: null,
    dialogOpen: false,
    paused: false,
    interaction: 'inactivityTimer dialog opened',
    name: 'inactivityTimer',
    enabled: false
}
// Run Model Timer
var noRunTimer = {
    time: 0,
    interval: null,
    increment: 1000, // 1 second
    //timeLimit: 20, // in seconds

    //countdown: 30, // in seconds
    timeLimit: 240, // in seconds
    countdown: 30, // in seconds
    // timeLimit: 10, // in seconds
    // countdown: 10, // in seconds
    dialog: null,
    dialogOpen: false,
    paused: false,
    interaction: 'noRunTimer dialog opened',
    name: 'noRunTimer',
    shown: false,
    enabled: false,
    ran: false,
}

var nextChallengeTimer = {
    time: 0,
    interval: null,
    increment: 1000, // 1 second
    //timeLimit: 100, // in seconds
    //countdown: 20, // in seconds
    timeLimit: 360, // in seconds
    countdown: 30, // in seconds
    // timeLimit: 5, // in seconds
    // countdown: 30, // in seconds
    dialog: null,
    dialogOpen: false,
    paused: false,
    interaction: 'nextChallengeTimer dialog opened',
    name: 'nextChallengeTimer',
    enabled: false,
}

var idleTime = 0;
var inactiveDialogOpen = false,
countdownDialogShown = false;
var idleInterval, timeLimitInterval;
var limitTime = 0;

var DEBUG_MODE = 1;
$(document).ready(function () {
    if (!startTimersMessage()) {
        console.log("iPad App not detected!");

        switch (DEBUG_MODE) {
            // Only Test Logging
            case 1:
                captureUserInteractions();
                break;
                // Only Test Timers
            case 2:
                break;
                // Test Logging & Timers
            case 3:
                break;
        }
    }
    else {
        // Build each timer's dialog
        inactivityTimer.dialog = buildInactivityDialog();

        noRunTimer.dialog = buildDialog(
            'Run The Model',
            'To implement your policy choices, you have to press the "Run Model" Button.',
            true,
            15000
            );
        noRunTimer.span = getDialogSpan(noRunTimer);

        // Change 'Next Challenge Text'
        nextChallengeTimer.dialog = buildDialog(
            'Time\'s Up!',
            'Try and finish up your choices. WaterSim will move on to the next challenge in'
            );
        nextChallengeTimer.span = getDialogSpan(nextChallengeTimer);

        //Zero the idle timer on mouse movement.
        $(this).mousemove(function (e) {
            if (!inactivityTimer.dialogOpen) {
                inactivityTimer.time = 0;
                inactivityTimer.currentTimeLimit = 0;
            }
        });
        $(this).keypress(function (e) {
            if (!inactivityTimer.dialogOpen) {
                inactivityTimer.time = 0;
                inactivityTimer.currentTimeLimit = 0;
            }
        });

        captureUserInteractions();
    }
});

function startTimers(enableTimers) {
    if (enableTimers) {
        inactivityTimer.enabled = true;
        nextChallengeTimer.enabled = true;
        noRunTimer.enabled = true;
    }

    if(inactivityTimer.enabled)
        setInactivityTimer();

    if(nextChallengeTimer.enabled)
        setNextChallengeTimer();

    if (noRunTimer.enabled)
        setNoRunTimer(true);

    sendMessage('Timers Started!');
}

function setNextChallengeTimer(){
    nextChallengeTimer.paused = false;
    if(nextChallengeTimer.enabled)
        nextChallengeTimer.interval = setInterval(nextChallengeCheck, nextChallengeTimer.increment);
}

function setInactivityTimer(){
    inactivityTimer.paused = false;
    if(inactivityTimer.enabled)
        inactivityTimer.interval = setInterval(inactivityCheck, inactivityTimer.increment);
}

function setNoRunTimer(status){
    noRunTimer.paused = false;
    if(noRunTimer.started || status)
        noRunTimer.interval = setInterval(noRunCheck, noRunTimer.increment);
}

function openDialog(timer){
    $("body").append(timer.dialog);
    timer.dialogOpen = true;
    storeUserInteraction(timer.interaction);
}

function closeDialog(timer){
    timer.time = 0;

    if (timer.dialog)
        timer.dialog.remove();

    timer.dialogOpen = false;
    console.log('timer.time:', timer.time);
}

function clearTimerInterval(timer){
    clearInterval(timer.interval);
    closeDialog(timer);
    timer.paused = false;

    if(timer.interaction.indexOf('noRun') > -1){
        noRunTimer.started = false;
    }
}

function clearAllTimerIntervals() {
    clearTimerInterval(inactivityTimer);
    clearTimerInterval(noRunTimer);
    clearTimerInterval(nextChallengeTimer);
}

function pauseTimerInterval(timer){
    console.log(timer.name, ' paused');
    clearInterval(timer.interval);
    timer.paused = true;
}

function inactivityCheck() {
    inactivityTimer.time++;

    if(inactivityTimer.time > inactivityTimer.timeLimit[inactivityTimer.currentTimeLimit] && !inactivityTimer.dialogOpen){

        // if(inactivityTimer.currentTimeLimit > 0){
        //     inactivityTimer.dialog.find('input').remove();

        //     inactivityTimer.dialog.find('p').remove();
        //     inactivityTimer.dialog.find('h2').text('Thank you for playing.');
        // }

        openDialog(inactivityTimer);

        if(noRunTimer.dialogOpen)
            clearTimerInterval(noRunTimer);
        // pauseTimerInterval(nextChallengeTimer);
        // pauseTimerInterval(noRunTimer);
    }
    else if(inactivityTimer.time > inactivityTimer.timeLimit[inactivityTimer.currentTimeLimit] + inactivityTimer.countdown && inactivityTimer.dialogOpen){
        inactivityTimerCallback();
    }
    if(!(inactivityTimer.time % 5))
        console.log('inactivityCheck: ', inactivityTimer.time);

}

function inactivityTimerCallback(){
    clearAllTimerIntervals();

    storeUserInteraction('inactivityTimer Timeout');

    sendMessage("should call native");
    saveUserSession();

    console.log("stop everything!");
}

function noRunCheck(){
    noRunTimer.time++;

    var totalTime = noRunTimer.timeLimit + noRunTimer.countdown;

    if(noRunTimer.time > noRunTimer.timeLimit && !noRunTimer.dialogOpen){
        openDialog(noRunTimer);
        // noRunTimer.span.text(totalTime - noRunTimer.time + 1);

        // pauseTimerInterval(inactivityTimer);
        // pauseTimerInterval(nextChallengeTimer);
    }
    else if(noRunTimer.time > totalTime && noRunTimer.dialogOpen){
        // noRunTimerCallback();
    }
    else if(noRunTimer.time > noRunTimer.timeLimit && noRunTimer.dialogOpen){
        // noRunTimer.span.text(totalTime - noRunTimer.time + 1);
    }

    if(!(noRunTimer.time % 5))
        console.log('noRunCheck: ', noRunTimer.time);
}

function noRunTimerCallback(){
    storeUserInteraction('noRunTimer Timeout');

    // Double check on if timer restarts on run or clears
    clearTimerInterval(noRunTimer);
    $('#run-model-Main').click();
}

function startNoRunTimer(){
    if(userSession.continueClicked && ChallengeState < RestartAppValue &&
        userSession.actionsSinceContinue != userSession.userInteraction.length && noRunTimer.enabled){
        userSession.continueClicked = false;
        setNoRunTimer(true);
        noRunTimer.started = true;
        noRunTimer.enabled = false;
    }
}

function nextChallengeCheck(){
    nextChallengeTimer.time++;

    var totalTime = nextChallengeTimer.timeLimit + nextChallengeTimer.countdown;

    if(nextChallengeTimer.time  > nextChallengeTimer.timeLimit && !nextChallengeTimer.dialogOpen){
        if(ChallengeState){
            nextChallengeTimer.dialog = buildDialog('Game Over',
                'Thank you for playing Watersim! The App will be restarting in the next');
            nextChallengeTimer.span = getDialogSpan(nextChallengeTimer);
        }
        openDialog(nextChallengeTimer);
        nextChallengeTimer.span.text(totalTime - nextChallengeTimer.time + 1);

        pauseTimerInterval(inactivityTimer);
        pauseTimerInterval(noRunTimer);
    }
    else if(nextChallengeTimer.time > totalTime && nextChallengeTimer.dialogOpen){
        nextChallengeTimerCallback();
    }
    else if(nextChallengeTimer.time > nextChallengeTimer.timeLimit && nextChallengeTimer.dialogOpen){
        nextChallengeTimer.span.text(totalTime - nextChallengeTimer.time + 1);
    }

    if(!(nextChallengeTimer.time % 5))
        console.log('nextChallengeCheck: ', nextChallengeTimer.time);
}

function nextChallengeTimerCallback(){
    storeUserInteraction('nextChallengeTimer Timeout');
    // nextChallenge();
    $('#next-challenge').click();
}

//-----------------------------------------------------------
// User Session Logging
var userSession = {
    key: 'test',
    startTime: (new Date()).getTime(),
    endTime: (new Date()).getTime(),
    inactiveCount: 0,
    progressionCount: 0,
    appState: 0,
    state: '',
    smithValue: '',
    SNValue: '',
    userInteraction: [],
    logging: false,
    actionsSinceContinue: 0,
    continueClicked: false
}
var saveCount = 0;

function storeUserInteraction(name) {
    if (userSession) {
        userSession.userInteraction.push((new Date()).getTime() + ':' + name);
        console.log(userSession.userInteraction[userSession.userInteraction.length - 1]);
    }
}
function captureUserInteractions() {
    $('span.ui-button-text').click(function (e) {
        storeUserInteraction(this.parentElement.getAttribute('for'));
        startNoRunTimer();
    });

    //$('.ui-tabs-anchor').click(function (e) {
    //    storeUserInteraction('TAB_' + this.innerText);
    //    startNoRunTimer();
    //});

    $('#run-model-Main').click(function (e) {
        storeUserInteraction("RUN MODEL");

        clearTimerInterval(noRunTimer);

        if (inactivityTimer.paused)
            setInactivityTimer();

        if (nextChallengeTimer.paused)
            setNextChallengeTimer();

        sendMessage('callWebService');
    });

    $('#next-challenge').click(function (e) {

        if (userSession.logging) {
            storeUserInteraction(NextChallengeButtonText[userSession.progressionCount++]);

            userSession.actionsSinceContinue = userSession.userInteraction.length;
            userSession.continueClicked = true;
        }

        //console.log('userSession.progressionCount:', userSession.progressionCount);

        if (userSession.progressionCount == RestartAppValue) {
            clearAllTimerIntervals();

            console.log('Should be exiting!');

            if (isIpadApp()) {
                saveUserSession();
            }

            return;
        }

        sendMessage('callWebService');

        clearAllTimerIntervals();

        startTimers();
    });

    if (userSession) {
        userSession.logging = true;
    }
}

// Save user session information
function saveUserSession(){
    if(saveCount < 2){
        if (userSession) {
            userSession.appState = ChallengeState;
            userSession.endTime = (new Date()).getTime();
            userSession.state = providerRegion;

            // userSession.userInteraction = userSession.userInteraction.join('\n');
            userSession.userInteraction = userSession.userInteraction.join(',');
            sendUserSession();
        }
    }
}

function sendUserSession(){
    $.ajax({
        type: 'GET',
        url: 'http://vader.lab.asu.edu/GCloudTomcat/WaterSim/services/storesessionget?callback=?',
        data: userSession,
        dataType: 'jsonp',
        error: function (jqXHR, textStatus, errorThrown) {
            // do something when error...
            console.log('error: ', jqXHR, textStatus, errorThrown)
            if(saveCount < 2){
                saveCount++;
                sendUserSession();
            }
            else{
                ajaxError('saveUserSession', jqXHR, textStatus, errorThrown, true);
                // callNativeApp();
            }
        },
        success: function (data, textStatus, jqXHR) {
            console.log('success: ', data);

            setTimeout(function () {
                callNativeSessionStore(JSON.stringify(userSession));
                callNativeApp();
                userSession.sentInteractions = userSession.userInteraction;
                userSession.userInteraction = [];
            }, 30000);
            // This is the timer for the thank-you screen (04.11.2019 das)
        }
    });
}

function nextChallenge(){
    clearAllTimerIntervals();

    var waitTime = 0;

    // evoke the ChallengeState sideshow
    setTimeout(function(){
        if (ChallengeState < RestartAppValue) {
            nextChallengeClick();
        }
        else{
            saveUserSession();
            return;
        }

        startTimers();
    },
    waitTime);
}
