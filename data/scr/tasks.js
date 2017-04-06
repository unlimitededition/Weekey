var Obs = require("FuseJS/Observable");
var Wk = require("data/scr/week.js");
var Sto = require("FuseJS/Storage");

var Tasks = {};
module.exports = Tasks;

var today = new Date().getDay();
var now = new Date().getTime();
var week = Wk.getWeek(new Date());
var timeFile = "time";
var taskFile = "tasks";
var loaded = false;

var taskList = Obs();
var taskInput = Obs("");
var currentDay = Obs(1);
var period = Obs(0);

if(!loaded){
    readFromDisk();
    loaded = true;
}

function Task(tas, day, dur){  //TODO: (f)Init date, 
    this.id = 0; // TODO: Generate ID function (Easy - Increment from last)
    this.task = tas;
    this.days = day;
    this.start = today;
    this.duration = dur;
    this.dayList = Obs();
    this.urgent = Obs("9");
    this.complete = Obs(false);
    this.expired = false;
}

function createTask(){
    if(taskInput.value == "")
    {
        currentDay.value = 1;
        return;
    } else {
        var newTask = new Task(taskInput.value, currentDay.value, period.value);

        for(var i = 0; i < newTask.days; i++){
            newTask.dayList.add("Non");
        }

        if(newTask.complete.value == true){
            newTask.urgent.value = "Non";
        } else {
            var rem = newTask.days - (today - newTask.start);
            console.log("Days: " + rem + "| Today(number): " + today);
            if(rem > 2){
                 newTask.urgent.value = "Non";
            } else if(rem <= 2 && rem >= 1){
                newTask.urgent.value = "Urg";
            } else if(rem == 0){
                newTask.urgent.value = "Crit";
            }
        }

        currentDay.value = 1;

        taskList.add(newTask);
        taskInput.value = "";
        saveToDisk();
    }
}

function completeTask(event){//TODO: Update daylist Array
    console.log("Complete");
    event.data.dayList.forEach(function(arg){
        console.log(arg);
        if((arg == "Inco") && (event.data.complete.value == false)){
            arg.value = "Comp";
            event.data.complete.value = true;
            event.data.urgent.value = "Non";
        }
    });

    saveToDisk();
}

function saveToDisk(){
    var dataArray = [];

    taskList.forEach(function(arg){
        var tmpJson = {
            id: arg.id,
            task: arg.task,
            days: arg.days,
            start: arg.start,
            duration: arg.duration,
            dayList: [],
            urgent: arg.urgent.value,
            complete: arg.complete.value,
            expired: arg.expired
        };

        arg.dayList.forEach(function(eachArg){
            tmpJson.dayList.push(eachArg);
        });

        dataArray.push(tmpJson);
    });

    saveData(taskFile, JSON.stringify(dataArray));
}

function readFromDisk()
{
    Sto.read(taskFile).then(function(content)
    {
        content = JSON.parse(content);

        for(var l = 0; l < content.length; l++){ //CODO: Could always add JSON array and replace Observers
            var tmpObserve = {

                id: content[l].id,
                task: content[l].task,
                days: content[l].days,
                start: content[l].start,
                duration: content[l].duration,
                dayList: Obs(),
                urgent: Obs(content[l].urgent),
                complete: Obs(content[l].complete),
                expired: content[l].expired
            };

            for(var lm = 0; lm < content[l].dayList.length; lm++){
                tmpObserve.dayList.add(content[l].dayList[lm]);
            }

            taskList.add(tmpObserve);
            updateTasks(); //Updates Tasks
        }
    }, function(error) {
        console.log("Couldn't Read Data: " + taskFile + " - " + error);
    });
}

function updateTasks(){
    Sto.read(timeFile).then(function(content)
    {
        content = JSON.parse(content);
        updatingTasks(content);
    }, function(error) {
        var emergencyTime = { //TODO extract
            now: now,
            today: today,
            week: week
        };

        saveData(timeFile, JSON.stringify(emergencyTime));
        console.log("Saving Time File " + timeFile + " - " + error);
    });
}
function updatingTasks(lastTime){
    if(lastTime.week < week){ //TODO
        console.log("Hi This Week!!!");
    } else if(lastTime.today < today){
        console.log("Hi Today!!!");


    } else if(lastTime.now < now){ //for(var i = 0; i < taskList.length; i++)
        console.log("Hi Again!!!");
        taskList.forEach(function dayUpdate(tas){
            console.log("Is updated: " + tas.dayList[0].getAt(0)); //Transition phase - Array to Observable or Rebuild Array
            for(var n = 0; n < tas.dayList.length; n++){
                var tmpTask = tas.dayList[n].identity();
                console.log(tmpTask.value);
                if((tmpTask == "Inco") && (tas.complete.getAt(0) == false)){
                    tmpTask.value = "Miss";
                    tas.complete.value = true;
                }
            }
        });
    }

    saveToDisk();
    saveData(timeFile, JSON.stringify(emergencyTime));
}

function saveData(dataOutLoc, dataOut){
    Sto.write(dataOutLoc, dataOut).then(function(succeeded){
        if(succeeded){
            console.log("Successfully Wrote Data: " + dataOutLoc);
        } else {
            console.log("Couldn Not Write Data: " + dataOutLoc);
        }
    });
}

function arrangeTasks()
{
    
}

function dayCheck()
{

}

function weekCheck()
{

}

function deleteTask(event){
    taskList.tryRemove(event.data);
}

function clearTasks(){
    taskList.clear();
    saveToDisk();
}

function addDay() //TODO: Condense
{
    if(currentDay.value >= (7 - today)){
        currentDay.value = 0;
    }
    currentDay.value++;
    currentDay.value = currentDay.value;
}

module.exports = {

    saveToDisk: saveToDisk,
    addDay: addDay,
    taskList: taskList,
    completeTask: completeTask,
    deleteTask: deleteTask,
    Task: Task,
    period: period,
    taskInput: taskInput,
    createTask: createTask,
    currentDay: currentDay,
    clearTasks: clearTasks
}
