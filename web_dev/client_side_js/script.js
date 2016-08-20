console.log("Script.js is running!");

var titles = document.getElementsByTagName("header");
var title = titles[0]
title.style.border = "5px dotted pink";

function hideImageOnClick(event) {
  event.target.hidden = true;
}

var pic = document.getElementById("kitten-pic");
pic.addEventListener("click", hideImageOnClick);

function changeFontColor(event) {
  event.target.style.color = "orange";
}

var els = document.getElementsByTagName("h1");
els.addEventListener("click", changeFontColor);
