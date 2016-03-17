
//Ruby to JavaScript - Calculate the Median

//Pseudocode:
//Input: An array
//Output: The median of that array
//Steps: Create a function that takes an array
//  Sort the array
//  Create a variable for the halfway mark of our array by rounding up for length/2 if array is odd length
// If odd length, the median is the value at this halfway mark
// If even length, the median is the value at this halfway mark + one behind the halfway mark, divided by 2

//Calculate the median
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
