var Obs = require("FuseJS/Observable");
var Wk = require("data/scr/week.js");
var Sto = require("FuseJS/Storage");

var week = Wk.getWeek(new Date());

var settings = {};
var setLoaded = false;

var introPageIndex = 1;
var introPage = Obs("intro_one")
var mainPage = Obs("mainPage");
var secondPage = Obs("intro");

if(!setLoaded){
	set_load();
	set_update();
	setLoaded = true;
	console.log("Settings Loaded!");
}

function set_load(){
	var setRead = Sto.readSync("settings");

	if(setRead == ""){
		settings = {
	        intro: true,
	        week: week,
	        theme: "theme"
	        };

		set_save();
	} else {
		settings = JSON.parse(setRead)
	}

	if(settings.intro){
		set_intro();
	}
}

function set_update(){
	if((settings.week < week) && !settings.intro){
		settings.week = week;
		set_save();
		set_progress();
	}
}

function set_return(){
	set_mainPage(1);
}

function set_intro(){
	set_secPage(1);
	set_mainPage(2);
}

function set_progress(){
	set_secPage(2);
	set_mainPage(2);
}

function set_feed(){
	set_secPage(3);
	set_mainPage(2);
}

function set_save(){
	return Sto.writeSync("settings", JSON.stringify(settings));
}

function set_mainPage(page){
	switch(page) {
        case 1:
        	mainPage.value = "mainPage";
            break;
        case 2:
        	mainPage.value = "secondPage";
            break;
        default:
        	mainPage.value = "mainPage";
    }
}

function set_secPage(page){
	switch(page) {
        case 1:
        	secondPage.value = "intro";
            break;
        case 2:
        	secondPage.value = "acheive";
            break;
        case 3:
        	secondPage.value = "feed";
            break;
        default:
        	secondPage.value = "intro";
    }
}

function set_introCycle(){
	switch(introPageIndex){
		case 1:
			introPage.value = "intro_two";
			introPageIndex = 2;
			break;
		case 2:
			introPage.value = "intro_three";
			introPageIndex = 3;
			break;
		case 3:
			introPage.value = "intro_four";
			introPageIndex = 4;
			break;
		case 4:
			introPageIndex = 1;
			set_mainPage(1);
			settings.intro = false;
			set_save();
			introPage.value = "intro_one";
			console.log("Intro Complete!");
			break;
		default:
			introPage.value = "intro_one";
			introPageIndex = 1;
	}
}

module.exports = {
	
	introPage: introPage,
	set_progress: set_progress,
	set_return: set_return,
	set_introCycle: set_introCycle,
	set_intro: set_intro,
    mainPage: mainPage,
    secondPage: secondPage
}