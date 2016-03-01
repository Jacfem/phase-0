// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var goodFriend = "You're the best! You deserve everything in the world!";
console.log(goodFriend);


prompt("What's your favorite food?");
alert("Hey! That's my favorite too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// FizzBuzz:
var number = 1;

for (var number = 1; number < 101; number += 1)
  if (number % 5 === 0 && number % 3 === 0) console.log("FizzBuzz");
  else if (number % 3 === 0 && number % 5 !== 0) console.log("Fizz");
  else if (number % 5 === 0 && number % 3 !== 0) console.log("Buzz");
  else console.log(number);


// Functions

// Complete the `minimum` exercise.
function minNumber (num1, num2) {
  if (num1 < num2)
    {return num1};
  if (num2 < num1)
    {return num2};
};

console.log(minNumber(10, 15));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Jackie",
  age: 24,
  favoriteFoods: ["pizza", "avocado", "sandwiches"],
  quirk: "I sleep too much."
}
