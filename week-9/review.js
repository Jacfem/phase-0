
//Ruby to JavaScript - Calculate the Median

//Pseudocode:
//Input: An array
//Output: The median of that array
//Steps: Create a function that takes an array
//  Sort the array
//  Create a variable for the halfway mark of our array by rounding up for length/2 if array is odd length
// If odd length, the median is the value at this halfway mark
// If even length, the median is the value at this halfway mark + one behind the halfway mark, divided by 2

//Calculate the median - Initial Solution
var median = function(array){
  array.sort();
  var half = Math.floor(array.length/2)
  if (array.length % 2 !== 0){ //if it's not even length
  median = array[half];
  }
  else { // if it's even length
    median = (array[half] + array[(half-1)])/2;
  }
  console.log(median);
}

median([1,2,3,4,5,6,7])

/*
What concepts did you solidify in working on this challenge?
I solidified the Math.floor method that helps us round numbers, as well as the logic in creating variables within javascript to access in the future

What was the most difficult part of this challenge?
It was difficult figuring out the Math.floor functionality that JavaScript has, but it's a neat feature.

Did you solve the problem in a new way this time?
The logic was the same, and I still used sort & length in order to find the medians, but this time I declared a variable 'half' early on to make the code more concise.

Was your pseudocode different from the Ruby version? What was the same and what was different?
My pseudocode wasn't very different from my Ruby version.

*/
