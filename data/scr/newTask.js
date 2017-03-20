var today = new Date().getDay();

var NewTask = {};
module.exports = NewTask;

if(today == 0)
{
	NewTask.update_weekComplete();
}

NewTask.add_Days = function(currentDay)
{
	if(currentDay >= (7 - today))
	{
		currentDay = 0;
	}

	currentDay++;

	return currentDay;
}

NewTask.reset_Days = function(currentDay)
{
	currentDay = 1;
	return currentDay;
}

NewTask.create_Event = function(tas, day, dur)
{
	var durationString;
	var dayList = [];

	switch(dur) {
    case 0:
        durationString = "Temp";
        break;
    case 1:
        durationString = "Weekley";
        break;
    default:
        durationString = "Null";
	} 

	for(var i = 0; i < day; i++)
	{
		dayList[i] = "Inco";
	}

	var taskEvent = {

		task: tas,
		days: day,
		dayList: dayList,
		duration: durationString, // TODO: Remove to intagers
		urgent: 0, //0 = not Urgent, 1 = Priority, 2 = Urgent
		incomplete: true,
		expired: false
	}

	return taskEvent;
}