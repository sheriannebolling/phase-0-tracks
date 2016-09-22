//Coyotes

//Release 0
//Input array of strings
//Create a function that takes an array as a parameter
	//Create a loop that iterates through the array and 
		//Uses .length to find out the length of array
		//Returns phrase with longest length using .sort
//Expect ["long phrase","longest phrase","longer phrase"] to return "longest phrase"
//Output longest string


var lengthPhrases = ["long phrase","longest phrase","longer phrase"];
var lengthWords = ["Hippo","Aligator", "Snake"];

function longestString(array_strings) {
	for (i = array_strings.length; i > 0; i--){
		array_strings.sort(function (long, longest) { return longest.length - long.length; })[0];
	}
	return array_strings[0];
}


//Release 1
//input two objects
//output a boolean value
	//{name: "Steven", age: 54} and {name: "Tamir", age: 54} should return true
	//Create two seperate objects
	//Create function that takes two objects as parameters
	//Iterate through each object and use if else statement in function to see if object pair 
	//matches using .notation

var steven = {name: "Steven", age: 54};

var tamir = {name: "Tamir", age: 54};

var brandon = {name: "Brandon", age: 34};

var sherianne = {name: "Sherianne",age: 32};



function matchObjects (object_1, object_2){
	var matches = "";
	for (var key in object_1){
		if (object_1[key] === object_2[key]){
			matches = true;
		}
		else {
			matches = false;
		}
	}
	return matches;
}


//Test code for longestString function
console.log(longestString(lengthPhrases));
console.log(longestString(lengthWords));

console.log(matchObjects(steven, tamir));
console.log(matchObjects(sherianne, brandon));
console.log(matchObjects(sherianne, steven));
console.log(matchObjects(sherianne, tamir));


//Release 2

//Input - Integer
//Create function that takes an integer as a parameter
//While loop to  makes number of words specified in parameter
//For loop to make random words.
//Use .random to make random letters 
//Output - Array of 3 random words

function makeWord(times){
    var text = "";
    var possible = "abcdefghijklmnopqrstuvwxyz";
    wordArray = [];
    j = 0;
    while (j < times){
	    for( var i=0; i < Math.random() * 5; i++ ){
	        text += possible.charAt(Math.floor(Math.random() * possible.length));
	    }
	    wordArray.push(text);
	    j++;
	}
    console.log(wordArray);
    return wordArray;
}

//Driver code makeWord
//console.log(makeWord(3));


//Creates 10 arrays and returns the longest word of each
x = 0;
while (x < 10) {
	longestString(makeWord(3))[0];
	console.log(wordArray[0]);
	x++;
}

// Note
// I was able to generate a random set of words but I was unable to limit the number of letters to 10.
//I will research this more over the next week. 


//Bobolinks
		// //Release 0

		// // Input array of strings
		// // Output longest string in array
		// // Expect array of ["long phrase","longest phrase","longer phrase"]
		// // to return "longest phrase"
		// // Step 1 Create a variable that holds an array of strings
		// // Step 2 Create a function that takes an array as an argument
		// // Step 3 Create empty array
		// // Step 4 Use for loop to loop through string array and print array with .length of
		// // of each string


		// var stringArray = ["long phrase","longest phrase","longer phrase"];
		// var wordArray = ["hi", "hello", "hi there"]

		// // I created this method on my first attempt that prints the length with the word in the array but found I couldn't
		// // get it to sort like this
		// function longestString(array){
			
		// 	for(var i = 0; i < array.length; i++){
		// 		var newArray = array[i].length;
		// 		var newerArray= [];
		// 		newerArray[array[i]] = newArray;
				
		// 		console.log(newerArray);
		// 	};
		// }

		// longestString(stringArray);


		// function longString(array){
			
		// 	for(var i = 0; i < 10; i++){
				
		// 	};
		// }

		// longString(stringArray);


		// // I had to time-box myself on this challenge. 
		// // I found this shortened solution for future reference. I didn't know you could write it 
		// // like this:

		// // stringArray.sort(function (a, b) { return b.length - a.length; })[0];
		// // console.log(stringArray[0]);

		// //I created this function when messing around with it and it works but I don't really understand why putting [0] in
		// //stringArray.sort(longest)[0] works

		// function longest(string_1, string_2) {
		// 	return string_2.length - string_1.length; 
		// };

		// stringArray.sort(longest)[0];
		// console.log(stringArray[0]);

		// wordArray.sort(longest)[0];
		// console.log(wordArray[0]);


		// //Release 1

		// //input two objects
		// //output boolean
		// //{name: "Steven", age: 54} and {name: "Tamir", age: 54}, function should return true
		// //Create two seperate objects
		// //Create function that takes two objects as parameters
		// //Iterate through each object and use if else statement in function to see if object pair 
		// //	matches using .notation

		// stevenObject = {
		// 	name: "Steven",
		// 	age: 54
		// }

		// tamirObject = {
		// 	name: "Tamir",
		// 	age: 54
		// }

		// shawnObject = {
		// 	job: "Shawn",
		// 	age: 32
		// }

		// harryObject = {
		// 	name: "Harry",
		// 	age: 24
		// }
		// //Object.values(obj)

		// console.log(stevenObject.name);

		// function match(objectOne, objectTwo){
		// 	length = 10
			
		// 	for(var i = 0; i < length; i++){
		// 		console.log(objectOne[i]);
				
		// 		if (objectOne.i === objectTwo.i){
		// 			return true;
		// 			console.log("true");
		// 		}
		// 		else {
		// 			return false;
		// 			console.log("false");
		// 		};
		// 	};
		// }

		// function matches(objectOne, objectTwo){
		// 	length = 10
			
		// 	for(var i = 0; i < length; i++){
		// 		console.log(objectOne[i]);
		// 		console.log(objectTwo[i]);
		// 		if (Object.is(objectOne, objectTwo)){
		// 			return true;
		// 			console.log("true");
		// 		}
		// 		else {
		// 			return false;
		// 			console.log("false");
		// 		};
		// 	};
		// }

		// console.log(matches(stevenObject, tamirObject));
		// console.log(matches(shawnObject, harryObject));
		// //Driver code for release 1
		// // console.log(match(stevenObject, tamirObject));
		// // console.log(match(shawnObject, harryObject));


		// //Release 2
		 
		// //Input length integer 
		// //Output array of strings that is the length of the integer given
		// //Create a function that takes a length parameter
		// //Create and alphabet variable 
		// //Use loop and .random to create random words


		// //Create object to create words
		// function wordCreate(times){
		// 	var alphabet = "abcdefghijklmnopqrstuvwxyz";
		// 	var wordArray = [];
		// 	var letterArray = [];

		// 	for (var i = 0; i < times; i++){
		// 		var randomLetter = (alphabet);
		// 		letterArray.push(randomLetter);
		// 		var word = letterArray.join();
		// 		wordArray.push(word);
		// 		return wordArray;
		// 	}
		// }

		// //console.log(wordCreate(3));


		// //Add driver code that does the following 10 times: generates an array, prints the array, 
		// //feeds the array to your "longest word" function, and prints the result.

		// //Attempt at printing
		// word = new wordCreate(3) 
		// //console.log(word);
		// var i = 0;

		// while (i < 10) {
		// 	wordCreate(4).sort(longest)[0];
		// 	//console.log(wordArray[0]);
		// 	i += 1;
		// }





