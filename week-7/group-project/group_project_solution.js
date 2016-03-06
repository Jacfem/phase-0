/* Person 1 - Jackie Feminella

Test Sum:
As a user, I want to use a function named sum which will give me the total of all elements in a list,
no matter how many elements there are to add up.

Test Mean:
As a user, I want to use a function named mean that will return an average of all elements in a list,
no matter how many elements there are in a list to average.

Test Median:
As a user, I want to use a function named median that will return the median (the halfway mark) of all elements in a list,
no matter how many elements there are in the list.

*/

/* Person 2 - Jonathan Nicolas

pseudocode for sum:

define a function that will take in array as argument

within the function apply the .inject method as such .inject(0){|sum,x| sum+ x}

pseudocode for mean

define a function mean that takes array as argument

use the .length method to get the number or elements in the array

call the function sum within the function mean and divide that by the length of the array



pseudocode for median

define a function taking array as argument

use the .sort method on the array to sort the elements in ascending order

check if the length is odd or even by using modulo %2

if odd divide the (length +1 )/2 to get the index of the median

if even find the middle two numbers of the array and divide by two

to get the two middle numbers do the following

divide the array length in half that is your first middle number

divide the array length +2 by half that is your second middle number

take the average of these two numbers to get the median for the case of even number of elements.

*/

/* Reflection - Person 1, Jackie Feminella
All of our tests passed except for the following:
mean should return the average of all elements in an array with an odd length.

I took a look at the code & realized we had not defined 'sum' as a function that could be accessed by the other variables, thus the method to calculate mean was not adding the total up to be averaged.
I took a stab at that issue, and found that iterating over to calculate the sum as such would work well:

var mean = function(array1){
  var totalSum = 0
  for (var i = 0; i < array1.length; i++)
    totalSum += array1[i];
  console.log(totalSum/array1.length);
}

The sum & median tests look great & had no errors!

*/
