function checkReady() {
    setTimeout(waitForDetailedData, 1000);
}

function totalElement() {
    return document.querySelector('span.gig-amount-used');
}

function waitForDetailedData() {
    var total = totalElement();
    if (!total) {
        checkReady();
    } else {
        displayAverageDailyUsage();
    }
}

function dailyLabel() {
    return isFrench() ? "Go par jour" : "GB daily";
}

function isFrench() {
    return 'fr' === language();
}

function language() {
    return window.location.toString().match(/com\/(fr|en)\/espace/)[1];
}

function localFloat(float) {
    float = float.toFixed(2);
    if (isFrench()) {
        return float.toString().replace(/\./, ',');
    }
    return float;
}

function displayAverageDailyUsage() {
    var total = totalElement().innerHTML.replace(',', '.');
    var days = document.querySelectorAll('.details-chart-current-month div.bar[data-amount-total]').length;
    var container = document.querySelector('div.details-chart-data div.data-numbers');

    var average = total > 0 && days > 0 ? total / days : total;

    container.innerHTML += " (" + localFloat(average) + " " + dailyLabel() + ")";
}

checkReady();
