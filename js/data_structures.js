//Create array of colors
var colorArray = ["blue", "green", "white", "black"];

//Create array of horses
var horseArray = ["Whispers", "Johnny", "Carrots", "Richard"];

//Add name to horse array
horseArray.push("Ed");

//Print horse array to test
console.log(horseArray);

//Add color to color array
colorArray.push("Magenta");

//Print color array to test
console.log(colorArray);

//Create object to hold horse names and colors
horseObject = {}

//Create function that adds horse array and color array to object
function horses(horseObject, horseArray, colorArray){
	for(var i = 0; i < horseArray.length; i++){
		horseObject[horseArray[i]] = colorArray[i];
	};
	console.log(horseObject);
}

//Call the horses function
horses(horseObject, horseArray, colorArray);


//Create car constructor
function Car(transmission, color, age){
	this.transmission = transmission;
	this.color = color;
	this.age = age;
	this.honk = function () {
		console.log("Beep Beep Beeeeeep!");
	}
}

//Create new instances of Car
var newCar = new Car("manual", "red", 50);
var secondCar = new Car("automatic", "green", 10);
var thirdCar = new Car("manual", "white", 1);

//Print instances of Car
console.log(newCar);
console.log(secondCar);
console.log(thirdCar);

//Call honk function on instance of Car
newCar.honk();

//Print use of property age 
console.log("This BMW is " + newCar.age + " years old");

//Print instance properties
console.log(newCar.age);
console.log(newCar.color);
console.log(newCar.transmission);

