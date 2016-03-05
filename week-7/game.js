// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: You're an aspiring metal detector, sent all over the globe for mysterious artifacts left behind from old ruins. Today though, you're in your backyard and just generally looking to clean up, and hopefully find some treasure.
// Overall mission: Move around the yard to see if your metal detector is beeping. If it is, dig and store any items you find. Avoid the groundhog!
// Goals: Find valuable items!
// Characters: One user
// Objects: The user has a metal detector, and a bag. They have the potential to add found items to the bag.
// Functions: Move, Inspect, and Add items

// Pseudocode
//Idea: Metal Detector Game
//Objects:
//    Person walking with metal detector
//    Objects you find: Block of gold, Silver ring, Quarter, Beer can, spoon - Will have properties of location, and value
//    A bag to hold the objects you find - Array
//Functions:
//    Move around a location - A function of the person with metal detector
//          --- Maybe not: Dig - A function of person and shovel
//    Add options to pick up and keep the item, inspect for its value, or leave it where it was.


var treasure = {
  posX: Math.floor((Math.random()*100)+1),
  // posY: Math.floor((Math.random()*100)+1),
    item: ["an old beer can", "a ring", "a quarter", "silver", "gold", "an old screw", "an earing", "some tin foil", "a treasure chest", "an old spoon"]
};

var rand = treasure.item[Math.floor(Math.random()*10)];

var player = {
  item: "metal detector",//Want to display the items the player gains
  // location: "center"
  posX: Math.floor((Math.random()*100)+1),
  //posY: Math.floor((Math.random()*100)+1),
  treasure: 0,
  success: false,

move: function(direction) {
  if(direction === "right") {
    this.posX +=10;
  }
  else if(direction === "left") {
    this.posX -=10;
  }
  // else if(direction === "up") {
  //   this.posY +=10;
  // }
  // else if(direction === "down") {
  //   this.posY -=10;
  // }
}
}
//posX: Math.floor((Math.random()*100)+1),
var groundhog = {
  posX: Math.floor((Math.random()*100)+1)
  // posY: Math.floor((Math.random()*100)+1)
};
//When player moves, a groundhog in the yard moves too!
groundhog.posX = Math.floor((Math.random()*100)+1);
groundhog.posY = Math.floor((Math.random()*100)+1);
console.log("The groundhog's position is " + groundhog.posX);
//+ "," + groundhog.posY
//Display where metal detector is
console.log("Your position is " + player.posX);
//+ "," + player.posY

//After each move, see if the player is on the same space as groundhog or if their metal detector is beeping for the treasure!
// && player.posY === groundhog.posY
if(player.posX === groundhog.posX){
  console.log("AHHHHHHHH!!!!!!! The groundhog scared you out of the yard! You'll have to metal detect here another day!");
}
// && player.posY === ring.posY
else if(player.posX === treasure.posX){
  player.success = true;
  player.treasure = 1;
  console.log("Your metal detector is beeping wildly! You drop down & dig, and find " + rand + "! You now have " + rand + " in addition to your metal detector.");
  player.item = ["metal detector", rand]
  console.log(player.item)
}

else if(player.posX === treasure.posX && player.posX === groundhog.posX){
  player.success = false;
  player.treasure = 0;
  console.log("Your metal detector is beeping wildly! Oh no!!! The groundhog dug up " + rand + " before you were able to!");
}

else {
  console.log("Keep moving around the yard looking for treasure, but try to avoid the groundhog!")
}


// player.move('up');
// player.move('left');


// Reflection
//
//
//
//
//
//
//
//
