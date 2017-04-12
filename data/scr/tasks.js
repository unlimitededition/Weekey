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

function runTasks(line){

    switch(line) {
        case 1:
            console.log("1");
            break;
        case 2:
            console.log("2");
            break;
        default:
    }
}

function Task(tas, day, dur){
    this.id = 0; // TODO: Generate ID function (Easy - Increment from last)
    this.task = tas;
    this.days = day;
    this.start = today;
    this.duration = dur;
    this.daysComp = Obs(0);
    this.urgent = Obs("9");
    this.complete = Obs(false);
    this.expired = false;
}

function createTask(){
    if(taskInput.value == "")
    {
        currentDay.value = 0;
        return;
    } else {
        var newTask = new Task(taskInput.value, currentDay.value, period.value);

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
    console.log("Complete: " +  event.data);
    if(!event.data.complete.value && (event.data.daysComp.value < event.data.days))
    {
        event.data.complete.value = true;
        event.data.daysComp.value++;
        saveToDisk();
    }
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
            daysComp: arg.daysComp.value,
            urgent: arg.urgent.value,
            complete: arg.complete.value,
            expired: arg.expired
        };

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
                daysComp: Obs(content[l].daysComp),
                urgent: Obs(content[l].urgent),
                complete: Obs(content[l].complete),
                expired: content[l].expired
            };

            taskList.add(tmpObserve);
        }
        updateTasks(); //Updates Tasks
    }, function(error) {
        console.log("Couldn't Read Data: " + taskFile + " - " + error);
    });
}

function updateTasks(){
    var content = Sto.readSync(timeFile);

    if(content == ""){
        console.log("No Time");
        var emergencyTime = {
        now: now,
        today: today,
        week: week
        };

        saveData(timeFile, JSON.stringify(emergencyTime));
    }
    updatingTasks(JSON.parse(content));
}
function updatingTasks(lastTime){
    if(lastTime.week < week){ //TODO
        console.log("Hi This Week!!!");
    } else if(lastTime.today < today){
        console.log("Hi Today!!!");
        dayCheck();
    } else if(lastTime.now < now){ //for(var i = 0; i < taskList.length; i++)
        console.log("Hi Again!!!");
    }

    saveToDisk();
    saveData(timeFile, JSON.stringify(emergencyTime));
}

function emergence(){

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

function dayCheck(){
    taskList.forEach(function x(arg){
        console.log("Is False: " + arg.complete + " | Days Complete: " + arg.daysComp.value + " | event.data.days: " + arg.days);
        if(arg.daysComp.value != arg.days){
            arg.complete.value = false;
        }
    });
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
