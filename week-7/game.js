// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: You're an aspiring metal detectorirst, sent all over the globe for mysterious artifacts left behind from old ruins.
// Today though, you're in your backyard and just generally looking to clean up, and hopefully find some treasure.
// Overall mission: Move around the yard to see if your metal detector is beeping. If it is, dig and store any items you find. Avoid the groundhog!
// Goals: Find valuable items & don't get kicked out of the yard by the groundhog!
// Characters: One user, one groundhog
// Objects: The user has a metal detector, and are looking for items to pickup.
// Functions: Move, Pickup items

//Pseudocode
//Idea: Metal Detector Game
//Objects:
//    Person walking with metal detector
//    Groundhog running around yard trying to chase you out
//    Objects you can find - Randomly chosen from the list below
//Functions:
//    Move around a location - A function of the person with metal detector
//    Function for the person to pickup what they find.

//Initial solution

// var treasure = {
//   pos: Math.floor((Math.random()*100)+1),
//   item: ["an old beer can", "a ring", "a quarter", "silver", "gold", "an old screw", "an earing", "some tin foil", "a treasure chest", "an old spoon"]
// };
//
// var rand = treasure.item[Math.floor(Math.random()*10)];
//
// var player = {
//   item: "metal detector",
//   pos: Math.floor((Math.random()*100)+1),
//   // treasure: 0,
//   // success: false,
//
// move: function(direction) {
//   if(direction === "right") {
//     this.pos +=10;
//   }
//   else if(direction === "left") {
//     this.pos -=10;
//   }
// },
// pickup: function(){
//   console.log("You now have " + rand + " in addition to your metal detector.");
// }
// }
//
// var groundhog = {
//   pos: Math.floor((Math.random()*100)+1)
// };
// //As player moves, a groundhog in the yard moves too!
// groundhog.pos = Math.floor((Math.random()*100)+1);
// console.log("The groundhog's position is " + groundhog.pos);
//
// //Display where metal detector is
// console.log("Your position is " + player.pos);
//
// //After each move, see if the player is on the same space as groundhog or if their metal detector is beeping for the treasure!
// if(player.pos === groundhog.pos){
//   console.log("AHHHHHHHH!!!!!!! The groundhog scared you out of the yard! You'll have to metal detect here another day!");
// }
// else if(player.pos === treasure.pos){
//   player.success = true;
//   player.treasure = 1;
//   console.log("Your metal detector is beeping wildly! You drop down & dig, and find " + rand + "!");
//   player.pickup(rand);
//   }
// else if(player.pos === treasure.pos && player.pos === groundhog.pos){
//   player.success = false;
//   player.treasure = 0;
//   console.log("Your metal detector is beeping wildly! Oh no!!! The groundhog dug up " + rand + " before you were able to!");
//       }
// else {
//   console.log("Keep moving around the yard looking for treasure, but try to avoid the groundhog!")
// }
//
// player.move('left');

//Refactored solution
var treasure = {
  pos: Math.floor((Math.random()*100)+1),
  item: ["an old beer can", "a ring", "a quarter", "silver", "gold", "an old screw", "an earing", "some tin foil", "a treasure chest", "an old spoon"]
};

var rand = treasure.item[Math.floor(Math.random()*10)];

var player = {
  pos: Math.floor((Math.random()*100)+1),
  move: function(direction) {
    if(direction === "right") this.pos +=10;
    else if(direction === "left") this.pos -=10;
    },
  pickup: function(){
  console.log("You now have " + rand + " in addition to your metal detector.");
    }
  }

var groundhog = {
  pos: Math.floor((Math.random()*100)+1)
};

console.log("The groundhog's position is " + groundhog.pos);
console.log("Your position is " + player.pos);

if(player.pos === groundhog.pos){
  console.log("AHHHHHHHH!!!!!!! The groundhog scared you out of the yard! You'll have to metal detect here another day!");
  }
else if(player.pos === treasure.pos){
  console.log("Your metal detector is beeping wildly! You drop down & dig, and find " + rand + "!");
  player.pickup(rand);
  }
else if(player.pos === treasure.pos && player.pos === groundhog.pos){
  console.log("Your metal detector is beeping wildly! Oh no!!! The groundhog dug up " + rand + " before you were able to!");
  }
else {
  console.log("Keep moving around the yard looking for treasure, but try to avoid the groundhog!");
  }

player.move('left');

/* Reflection
What was the most difficult part of this challenge?
The most difficult part of this challenge was figuring out how I wanted my objects and functions to interact.
It was easy coming up with a premise and the properties of my objects, but before I decided to use position properties, I was focused on getting user innput.
I don't feel great about the move function, because if I'm randomly choosing a location for each play, moving feels arbitrary.

What did you learn about creating objects and functions that interact with one another?
Giving the same properties to different objects allows you to create functions that can compare these properties' values, and do something depending on how they compare to one another.
In this case, the property is the player, treasure & groundhog's locations, and depending on if these values are equal or different, certain things happen in the game.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
The only new method I used in both solutions was the Math.random and Math.floor in order to console.log position numbers from 1-100, and pick randomly from the array of items I have in my treasure object. 

How can you access and manipulate properties of objects?
You can access properties of objects by using dot or bracket notation on the object, followed by the property you're accessing.
For instance, accessing the position of my player using dot notation looks like: player.pos
Using bracket notation would look like: player["pos"]
Using dot notation is somewhat preferred for its cleaner look, but you couldn't use this if the property name had any extra characters or symbols.


*/
