// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:
// Release 1:
var release0 = document.getElementById("release-0"); release0.setAttribute("class","done");

// Release 2:
var release1 = document.getElementById("release-1").style.display = "none";

// Release 3:
var release2 = document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";

// Release 4:
var release3 = document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5:
var release4 = document.getElementsByClassName("release-4")[0,1].style.fontSize = "2em";

// Release 6:
var template = document.getElementById("hidden");
document.body.appendChild(template.content.cloneNode(true));
