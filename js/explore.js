// Input: string
// Output: reversed string
// Expect: reverse("hello") to return "olleh"
// 1. Create a function that takes a string as a parameter
// 2. Make a variable that holds an empty string
// 3. Write a for loop in the function that reverses each of the letters in the string
// 4. Add each letter to the empty string variable
// 5. Print the new string


function reverseString(string){
	var newString =  "";
	for (var i = string.length; i > -1; i--)
		newString+=(string[i]);
		console.log(newString);
	}

//test that the function reverses the string
reverseString("hello");


