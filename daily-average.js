function totalElement() {
    return document.querySelector('span.gig-amount-used');
}

function waitForDetailedData() {
    var total = totalElement();
    if (!total) {
        setTimeout(waitForDetailedData, 1000);
    } else {
        displayAverageDailyUsage();
    }

}

function displayAverageDailyUsage() {

    var total = totalElement().innerHTML.replace(',', '.');

    var days = document.querySelectorAll('div[data-amount-total]').length;
    var container = document.querySelector('div.details-chart-data div.data-numbers');

    var average = (
        total /
        days
    );

    container.innerHTML += " (" + average.toString().replace('.', ',') + " Go par jour)";
}

setTimeout(waitForDetailedData, 1000);
