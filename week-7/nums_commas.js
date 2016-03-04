// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: Emily Osowski.

// Pseudocode
//Input: Integer
//Output: Return a comma-separated integer as a string
//Create a function
//Convert integer to string
//Create an array out of it - Reverse the string
//Using indices, access every 3rd index
//Insert a comma
//Join array back to a string
//Reverse string
//Return string

// Initial Solution

function comma(integer) {
  var array = integer.toString().split('').reverse();
  for (var count = 3; count < array.length; count+=4)
    // console.log(array[count] + ",")
  array.splice(count, 0, ",");
  return array .reverse().join("")
};

console.log(comma(12345678912))

// Refactored Solution

// Your Own Tests (OPTIONAL)

// Reflection
/*

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
We did approach it differently. Initially, in our Ruby version, I used conditional statements.
However, in this challenge, my mind immediately went to iterating through and adding commas at the appropriate index.
This felt cleaner because no matter the length of the array, it will return as we want it to.

What did you learn about iterating over arrays in JavaScript?
Iterating with a for loop actually feels more concise to me than it did in Ruby, and I like the one line syntax.

What was different about solving this problem in JavaScript?
In Ruby I used a lot of conditional statements, whereas the for loop in JavaScript provided a clean solution off the bat.
We did have some errors with our syntax & took extra attention on semi-colons and parentheses to troubleshoot.

What built-in methods did you find to incorporate in your refactored solution?
We felt that our original solution off the bat was extremely efficient.
We both agreed that initial solutions could've consisted of conditional statements, returning the integer if it was smaller than 4 digits, and adding a comma at every 3rd digit if it's larger.
For our solution, we used toString to conver the integer to a string, split to split the string to an array, and reverse to reverse the contents of the array.
Then we used a for loop to count through the length of the array and used splice to insert a comma.
We then used reverse and join to return the array as a string.

*/
