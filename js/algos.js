// Input array of strings
// Output longest string in array
// Expect array of ["long phrase","longest phrase","longer phrase"]
// to return "longest phrase"
// Step 1 Create a variable that holds an array of strings
// Step 2 Create a function that takes an array as an argument
// Step 3 Create empty array
// Step 4 Use for loop to loop through string array and print array with .length of
// 		of each string


var stringArray = ["long phrase","longest phrase","longer phrase"];



// I created this method on my first attempt that prints the length with the word in the array but found I couldn't
// get it to sort like this
function longestString(array){
	for(var i = 0; i < array.length; i++){
		var newArray = array[i].length;
		var newerArray= [];
		newerArray[array[i]] = newArray;
		console.log(newerArray);
	};
}
longestString(stringArray);


//I was able to create this function when messing around with it and it works but I don't really understand why putting [0] in
//stringArray.sort(longest)[0] works - maybe it is saying put the longest string at 0 index

function longest(string_1, string_2) {
			return string_2.length - string_1.length; 
		};

stringArray.sort(longest)[0];
console.log(stringArray[0]);

// I had to time-box myself on this challenge. 
// I found this shortened solution for future reference. I didn't know you could write it 
// like this:

// stringArray.sort(function (a, b) { return b.length - a.length; })[0];

// console.log(stringArray[0]);
