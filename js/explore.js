		
//Coyotes
//Input - String
//Create function that takes a string as a parameter
//Assign variable to empty string
//Write for loop reversing letters of string and add each letter to empty variable
//Output - Reversed sting

function reverseString(string){
	var reversedString = "";
	for (i = string.length-1; i > -1; i--)
	newString = reversedString += (string[i]);
	return newString;
}

//Driver code
console.log(reverseString("Hello there"));

var reverseHello = reverseString("Hello");
console.log(reverseHello);

if ("how are you") {
	console.log(reverseHello);
}




//Bobolinks
		// // Input: string
		// // Output: reversed string
		// // Expect: reverse("hello") to return "olleh"
		// // 1. Create a function that takes a string as a parameter
		// // 2. Make a variable that holds an empty string
		// // 3. Write a for loop in the function that reverses each of the letters in the string
		// // 4. Add each letter to the empty string variable
		// // 5. Print the new string

		// function reverseString(string){
		// 	var newString =  "";
		// 	for (var i = string.length; i > -1; i--)
		// 		newString+=(string[i]);
		// 		console.log(newString);
		// 		return newString;
		// 	}

		// //test that the function reverses the string
		// reverseString("hello");

		// //Call reverseString on string and store in variable
		// var reverseGreeting = reverseString("How are you doing today?");

		// //Print variable
		// console.log(reverseGreeting);

		// //Prints variable if condition is true
		// if (5){
		// 	console.log(reverseGreeting);
		// }

		// //Additional way to reverse and print without using a function which 
		// //is a bit cleaner and doesn't show undefined 
		// var string = 'Yay for Javascript!';
		// var stringReverse = string.split('').reverse().join('');
		// console.log(stringReverse);
