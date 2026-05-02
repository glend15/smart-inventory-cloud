const appInsights = require("applicationinsights");

const connectionString = process.env.APPINSIGHTS_CONNECTION_STRING;

if (connectionString) {
    appInsights.setup(connectionString)
        .setAutoCollectRequests(true)
        .setAutoCollectPerformance(true)
        .setAutoCollectExceptions(true)
        .setAutoCollectDependencies(true)
        .setAutoCollectConsole(true)
        .start();

    console.log("Application Insights aktif");
} else {
    console.log("Application Insights tidak aktif (env kosong)");
}

module.exports = appInsights;
