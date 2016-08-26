//Release 0

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
var wordArray = ["hi", "hello", "hi there"]

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


// I had to time-box myself on this challenge. 
// I found this shortened solution for future reference. I didn't know you could write it 
// like this:

// stringArray.sort(function (a, b) { return b.length - a.length; })[0];
// console.log(stringArray[0]);

//I created this function when messing around with it and it works but I don't really understand why putting [0] in
//stringArray.sort(longest)[0] works

function longest(string_1, string_2) {
			return string_2.length - string_1.length; 
		};

stringArray.sort(longest)[0];
console.log(stringArray[0]);

wordArray.sort(longest)[0];
console.log(wordArray[0]);


//Release 1

//input two objects
//output boolean
//{name: "Steven", age: 54} and {name: "Tamir", age: 54}, function should return true
//Create two seperate objects
//Create function that takes two objects as parameters
//Iterate through each object and use if else statement in function to see if object pair 
//		matches using .notation

stevenObject = {
	name: "Steven",
	age: 54
}

tamirObject = {
	name: "Tamir",
	age: 54
}

shawnObject = {
	job: "Shawn",
	age: 32
}

harryObject = {
	name: "Harry",
	age: 24
}
//Object.values(obj)

console.log(stevenObject.name);

function match(objectOne, objectTwo){
	length = 10
	
	for(var i = 0; i < length; i++){
		console.log(objectOne[i]);
		if (objectOne.i === objectTwo.i){
			return true;
			console.log("true");
		}
		else {
			return false;
			console.log("false");
		};
	};	
}

console.log(match(stevenObject, tamirObject));
console.log(match(shawnObject, harryObject));
// function printHorses(horseObject, horseArray, colorArray){
// 	for(var i = 0; i < horseArray.length; i++){
// 		console.log(horseObject[horseArray[i]] = colorArray[i]);
// 		console.log(horseObject[colorArray[i]] = horseArray[i]);
// 	};







