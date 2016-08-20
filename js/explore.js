// Input: string
// Output: reversed string
// Expect: reverse("hello") to return "olleh"
// 1. Create a function that takes a string as a parament
// 2. Write for loop in the function that console.logs in reverse


function reverseString(string){
	var newString =  "";
	for (var i = string.length; i > -1; i--)
		newString+=(string[i]);
		console.log(newString);
	}

reverseString("hello");


