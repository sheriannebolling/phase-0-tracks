//Input: array of strings
//Output: longest string in array
//Expect array of: ["long phrase","longest phrase","longer phrase"]
//to return: "longest phrase"
//Step 1: Create a function that takes an array as an argument
//Step 2: Split the array into strings
//Step 3: Use for loop and  .length to see length of each string


var stringArray = ["long phrase","longest phrase","longer phrase"];

function longestString(array){
	for(var i = 0; i < array.length; i++){
		var newArray = array[i].length;
		var newerArray= [];
		newerArray[array[i]] = newArray;
		console.log((newerArray.max));
	};
}

longestString(stringArray);