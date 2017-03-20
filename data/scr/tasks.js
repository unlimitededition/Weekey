var Obs = require("FuseJS/Observable");
var Wk = require("data/scr/week.js")

var Tasks = {};
module.exports = Tasks;

var taskList = Obs();
var taskInput = Obs("");
var currentDay = Obs(1);
var period = Obs(0);

function Task(tas, day, dur){  //TODO: (f)Init date, 
    this.id = 0; // TODO: Generate ID function (Easy - Increment from last)
    this.task = tas;
    this.days = day;
    this.duration = dur;
    this.dayList = [];
    this.urgent = Obs(2);
    this.complete = Obs(false);
    this.expired = false;
}

function createTask(){
    if(taskInput.value == "")
    {
        return;
    } else {
        var newTask = new Task(taskInput.value, currentDay.value, period.value);

        for(var i = 0; i < newTask.days; i++){
            newTask.dayList[i] = Obs("Inco");
        }

        if(newTask.complete == true){
            newTask.urgent.value = 0;
        } else {
            var rem = newTask.days - 0;
            if(rem > 2){
                 ewTask.urgent.value = 0;
            }
            if(rem >= 2 && rem <= 1){
                newTask.urgent.value = 1;
            }
            if(rem == 0){
                newTask.urgent.value = 2;
            }
        }
       
        taskList.add(newTask);
        taskInput.value = "";
        console.log(newTask.urgent.value);
    }
}

function completeTask(event){//TODO: Update daylist Array
    event.data.complete.value = true;
    event.data.urgent.value = 0;
    console.log(event.data.complete.value);
}

function arrangeTasks()
{
    Wk.getWeek(new Date());
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
    taskList.clear()
}

//

function addDay() //TODO: Condense
{
    if(currentDay >= (7 - today)){
        currentDay = 0;
    }
    currentDay++;
    currentDay.value = currentDay;
}

function resetDays (currentDay){
    currentDay.value = 1;
}

module.exports = {

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
//