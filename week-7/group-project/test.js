
// Add the finished solution here when you receive it.

// Sum:

var sum = function(array){
  var total = 0
  for(var i in array) {total += array[i];}
  return total
}
//sum([200,2])

// Mean:

var mean = function(array1){
  var nums = array1.length;
  console.log(sum(array1) / nums)
}
//mean([1,2,3])

// Median:

var median = function(array2){
  array2.sort();
  if (array2.length % 2 == 0) {
    var first_mid_num = (array2.length / 2);
    var sec_mid_num = ((array2.length + 2) / 2);
    console.log((first_mid_num + sec_mid_num) / 2);
  } else {
    console.log((array2.length + 1) / 2)
  }
}

//median([2,4,3,1,5,6])

// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)
