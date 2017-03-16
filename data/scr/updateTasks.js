var Wk = require("data/scr/isoWeek.js");

var UpdateTask = {};
module.exports = UpdateTask;

UpdateTask.taskUpdate = function(event) //Updates Urgency, Expiration
{
	//check for new day! 
	if(event.finished && NewTask.newDay)
	{
		event.fin = true;
	}

	//Check event completion
	if(event.done >= event.days)
	{
		event.com = true;
	}

	//Check event urgency
	if((event.day - event.dur) == 1)
	{
		event.urgent = 1
	}
	if((event.day - event.dur) == 0)
	{
		event.urgent = 2
	}

	return event;
}

UpdateTask.complete = function(event) //TODO: Update daylist Array
{
	event.data.urgent = 0;
	event.data.comp = true;
	console.log("Task Completed: " + JSON.stringify(event));

	for(var i = 0; i < event.data.dayList.length; i++)
	{
		if(event.data.dayList[i] == "Inco" && !event.data.comp)
		{
			event.data.comp = true;
			event.data.dayList[i] = "Comp";
			break;
		}
	}
}

UpdateTask.resetDay = function(event)
{
	event.data.comp = false
}

UpdateTask.arrangeTasks = function()
{
	Wk.getWeek(new Date());
}

UpdateTask.dayCheck = function()
{

}

UpdateTask.weekCheck = function()
{

}