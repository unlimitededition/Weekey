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
    this.duration = dur;
    this.dayList = [];
    this.urgent = Obs("0");
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
            newTask.dayList[i] = Obs("Inco");
        }

        console.log("DayList " + newTask.dayList.length);

        if(newTask.complete == true){
            newTask.urgent.value = "0";
        } else {
            var rem = newTask.days - (7 - today);
            if(rem > 2){
                 newTask.urgent.value = "0";
            }
            if(rem >= 2 && rem <= 1){
                newTask.urgent.value = "1";
            }
            if(rem == 0){
                newTask.urgent.value = "2";
            }
        }

        currentDay.value = 1;

        taskList.add(newTask);
        taskInput.value = "";
        saveToDisk();
    }
}

function completeTask(event){//TODO: Update daylist Array
    for(var i = 0; i < event.data.dayList.length; i++)
    {
       if(event.data.dayList[i].value == "Inco" && !event.data.comp){
           event.data.dayList[i].value = "Comp";
           event.data.complete.value = true;
           event.data.urgent.value = 0;

           break;
        }
    }

    saveToDisk();
}

function saveToDisk(){
    var dataArray = [];

    for(var i = 0; i < taskList.length; i++){
        var tmpJson = {
            id: taskList.getAt(i).id,
            task: taskList.getAt(i).task,
            days: taskList.getAt(i).days,
            duration: taskList.getAt(i).duration,
            dayList: [],
            urgent: taskList.getAt(i).urgent.value,
            complete: taskList.getAt(i).complete.value,
            expired: taskList.getAt(i).expired
        };

        for(var ij = 0; ij < taskList.getAt(i).dayList.length; ij++){
            tmpJson.dayList.push(taskList.getAt(i).dayList[ij].value);
        }

        dataArray.push(tmpJson);
    }

    saveData(taskFile, JSON.stringify(dataArray));
}

function readFromDisk()
{
    Sto.read(taskFile).then(function(content)
    {
        content = JSON.parse(content);
        console.log("Data Loaded: " + taskFile);
        console.log("Data Loaded: " + content);

        for(var i = 0; i < content.length; i++){ //CODO: Could always add JSON array and replace Observers
            var tmpObserve = {

                id: content[i].id,
                task: content[i].task,
                days: content[i].days,
                duration: content[i].duration,
                dayList: [],
                urgent: Obs(content[i].urgent),
                complete: Obs(content[i].complete),
                expired: content[i].expired
            };

            console.log(content[i].dayList.length);

            for(var ij = 0; ij < content[i].dayList.length; ij++){
                tmpObserve.dayList.push(Obs(content[i].dayList[ij]));
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
        var emergencyTime = {
            now: now,
            today: today,
            week: week
        };

        saveData(timeFile, JSON.stringify(emergencyTime));
        console.log("Couldn't Read Data: " + timeFile + " - " + error);
    });
}
function updatingTasks(lastTime){
    if(lastTime.week < week){ //TODO
        console.log("Hi");
    } else if(lastTime.today < today){


    } else if(lastTime.now < now){ //for(var i = 0; i < taskList.length; i++)
        for(var i = 0; i < taskList.length; i++){
            console.log("Is reset: " + taskList.getAt(i).dayList.length);
dance:
            if(taskList.getAt(i).complete.value == false){
                for(var ij = 0; ij < taskList.getAt(i).dayList.length; ij++){
                    if(taskList.getAt(i).dayList[ij].value == "Inco"){
                        taskList.getAt(i).dayList[ij].value = "Miss";
                        console.log("Task Missed");
                        break dance;
                    }
                }
            }
            taskList.getAt(i).complete.value = false;
        }

        console.log("Hi Again!!!");
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
