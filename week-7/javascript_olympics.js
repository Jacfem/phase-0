// JavaScript Olympics

// I paired with Brian Donahue on this challenge.

// This challenge took me 1 hour.

// Bulk Up
// pseudocode
//inpt: array with name and event properties
//out: string with win property
function win(array){
   for (var i = 0; i < array.length; i++){
      console.log(array[i][0] + " won " + array[i][1]);
}
};

var array = [["Roger Federer", "US Open"],
            ["Kobe Bryant", "NCAA"]];

win(array)

// Look into another way of doing this:
// var array = ["Roger", "Kobe", "Tiger"]
//
// var Roger = {
//   name: "Roger"
//   event: "US Open"
// }


// Jumble your words
//input:string
//output:reversed string

function reverse(x){
  console.log(x.split("").reverse().join(""));
};

reverse("Brian is my name")


// 2,4,6,8
//Input: Array of numbers
//Output: Returns array of all even numbers

function evens (array) {
  var even_array = []
  for (var i = 0; i < array.length; i++) {
    if (i % 2 == 0)
      even_array.push(array[i]);
  }
    console.log(even_array)
};

var array = [0, 2, 6, 7, 8, 3];
evens(array)


// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

//Driver Code:
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/* Reflection

What JavaScript knowledge did you solidify in this challenge?
This functionality of the 'this' keyword was proven useful in this challenge. 'This' is the object that is being constructed
when we create a new object. So, using this.name = name will give each new Athlete object the name we define, and so on.

What are constructor functions?
Constructor functions are ways to create objects. We did this in our 'We built this city' challenge above.
Once you have a constructor function, you can create objects of the same type (in above, it was Athlete).

How are constructors different from Ruby classes (in your research)?
Constructor functions in JS are similar to Ruby Classes.
They both can create multiple instances of an object, but in Ruby, this instance value is stored & changed.
In JS, these instances are unique to the new objects created, 


*/
