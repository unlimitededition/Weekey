var Storage = require("FuseJS/Storage");
var Observable = require("FuseJS/Observable");
var set = require("data/scr/settings.js");

var loaded = false;
var newTabText = Observable("Pull to Create New");

if(!loaded)
{
	readData("tasks.json");

	loaded = true;
}

function readData(dataInLoc) // TODO: Update to modular function... (A-Sync)
{
	Storage.read(dataInLoc).then(function(content)
	{
		return content;
		console.log("Data Loaded: " + dataInLoc);
	}, function(error) {
		console.log("Couldn't Read Data: " + dataInLoc);
	});
}

function saveData(dataOutLoc, dataOut){
	Storage.write(dataOut, dataOut).then(function(succeeded){
        if(succeeded){
            console.log("Successfully Wrote Data: " + dataOutLoc);
        } else {
            console.log("Couldn Not Write Data: " + dataOutLoc);
        }
	});
}

function animRotation(){ //TODO: Tick Function

}

module.exports = {
	newTabText: newTabText
}