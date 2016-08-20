// Input: string
// Output: reversed string
// Expect: reverse("hello") to return "olleh"
// 1. Create a function that takes a string as a parament
// 2. Write for loop in the function that console.logs in reverse


function reverseString(string){
	console.log(string);
	for (i = string.length; i > -1; i--)
		console.log(string[i]);
}

reverseString("Hello");
