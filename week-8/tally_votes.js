// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Brian Donahue:
// This challenge took me 3 hours.

var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
//For our function to count the votes:
//Access each voter property in votes
//Declare a variable ballot for the values of each voter's vote
//For each position in this ballot (president, etc), save the name that was voted for (in our code, nominee)
//If that nominee is already in the respective voteCount property (I.E. if they've been voted for for that position already), add one to the value of their name
//If that nominee has not been voted for for that respective position, add them as a property in that position and have the value be 1.
//Loop through this process for all of the votes

// __________________________________________
// Initial Solution

var countVotes = function(){
  for (var voter in votes){
    var ballot = votes[voter];
    for (var position in ballot){
      var nominee = ballot[position]
      if (voteCount[position].hasOwnProperty(nominee)){
        voteCount[position][nominee]++;
      }
      else {
        voteCount[position][nominee] = 1
      }
    }//position for loop
  } //voter-for-loop
} // function

countVotes()

//Pseudocode: For our function to declare a winner:
//For each position in voteCount (Each role being voted for)
//Declare a variable that will hold the score for each person voted on.
//For each name in this variable that holds the person/number of votes for each person,
//Check to see if each person's count(score[name]) is greater than a base we declare.
//If it is greater than the base, update the base to be the number of votes that person held.
//Also update a winner variable to be the name that had those votes
//Do this repeatedly with the updated base count until we have checked every person's number of votes.
//Return the most up to date winner for each position, push them to the officers object.

var declareWinner = function(){
  for (var position in voteCount){
    var score = voteCount[position];
    var base = 0
    for (var name in score){
      if (score[name] > base){
        base = score[name];
        var winner = name;
      }//if base
    }//for name
    officers[position] = winner;
  }// for position
    // var
}

declareWinner()

// __________________________________________
// Refactored Solution

// __________________________________________
/* Reflection
What did you learn about iterating over nested objects in JavaScript?
I thought it was going to be complicated, and it proved more complicated than I even thought! Once we got the hang of it, it made sense.
We at first thought we could tack a few for..in statements back-to-back in order to access the deeper levels of the object,
but it turns out that storing a variable as you're iterating deeper into nested objects makes your life easier.

Were you able to find useful methods to help you with this?
We mostly used for..in and also used .hasOwnProperty in order to check if someone's name had been pushed as a property into our object yet.

What concepts were solidified in the process of working through this challenge?
Using multiple for..in statements helped solidify their importance. It's pretty cool that we can define any variable for the elements in that object within that statement,
such as when we do var position in voteCount and var name in score. This syntax seems helpful and intuitive.
I also feel like we thought about the problem in a very scalable way, so I'm not sure what to refactor! We agreed that we could've taken
the approach of writing this out for each position, and not having to access that first level, but if we did that, we would've wanted to refactor into what we have here.


*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
