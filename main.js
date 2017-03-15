var loaded = false;
var evArr = []; //Add to Save Function

var Storage = require("FuseJS/Storage");
var Observable = require("FuseJS/Observable");
var nt = require("data/scr/newTask.js");
var up = require("data/scr/updateTasks.js");
var set = require("data/scr/settings.js");

var tasks = Observable();
var taskInput = Observable("");
var currentDay = Observable(1);
var Period = Observable(0);
var newTabText = Observable("Pull to Create New");
var taskFile = "tasks.json";

if(!loaded)
{
	readTasks();

	loaded = true;
}

function readTasks()
{
	Storage.read(taskFile).then(function(content)
	{
		var load = JSON.parse(content);
		for(var i = 0; i < load.length; i++)
		{
			evArr[i] = load[i];
			tasks.add(load[i])
		}
		console.log("Tasks Loaded!");
	}, function(error) {
		console.log("Couldn't Read Tasks File!");
	});
}

function addDay()
{
	currentDay.value = nt.add_Days(currentDay.value);
}

function createTask()
{
	if(taskInput.value == "")
	{
		return;
	}	
	var newEvent = nt.create_Event(taskInput.value, currentDay.value, Period.value);

	nt.reset_Days();
	currentDay.value = nt.reset_Days();
	taskInput.value = "";
	evArr.push(newEvent);

	tasks.add(newEvent);

    saveToDisk();
}

function saveToDisk()
{
	Storage.write(taskFile, JSON.stringify(evArr)).then(function(succeeded)
	{
        if(succeeded)
        {
            console.log("Successfully wrote to file");
        } else {
            console.log("Couldn't write to file.");
        }
	});
}

function taskComplete(task)
{
	up.complete(task);
	saveToDisk();
}

function delTasks()
{
	Storage.deleteSync(taskFile);
}

module.exports = {

	taskComplete: taskComplete,
	delTasks: delTasks,
	tasks: tasks,
	newTabText: newTabText,
	Period: Period,
	taskInput: taskInput,
	createTask: createTask,
	currentDay: currentDay,
	addDay: addDay
}