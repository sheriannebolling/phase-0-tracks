//Coyotes
 var colors = ["purple", "pink", "blue", "green"];
var names = ["Ombre", "Winston", "Charles", "Tina"];
 
colors.push("white");
names.push("Edward");

// console.log(colors);
// console.log(names);

var horses = {};

function colorfulHorses(names, colors, horses){
  for(var i = 0; i < names.length; i++){
    horses[names[i]] = colors[i];
  };
console.log(horses);
} 

// console.log(colorfulHorses(names, colors, horses));

function Car(brand, color, breaksWork){
  this.brand = brand;
  this.color = color;
  this.breaksWork = breaksWork;

  this.locksCar = function(){ 
    console.log("*locks the car*");
     }; 
}

var car = new Car("Tesla", "black", true);
var anotherCar = new Car("Ford", "white", false);
var yetAnotherCar = new Car("BMW", "green", true);
// console.log(car);
// console.log(anotherCar);
// console.log(yetAnotherCar);
// anotherCar.locksCar();


// Research on our own: 
// If you wanted to loop through the keys and values of an object, how would you do that? 
//  use a for loop (similar to while loop) 


for(var info in car){
   console.log(info + " = " + car[info]);
};


console.log(Object.keys(car)); 
// console.log(Object.values(car)); // values not supported 



//Bobolinks

		// //Create array of colors
		// var colorArray = ["blue", "green", "white", "black"];

		// //Create array of horses
		// var horseArray = ["Whispers", "Johnny", "Carrots", "Richard"];

		// //Add name to horse array
		// horseArray.push("Ed");

		// //Print horse array to test
		// console.log(horseArray);

		// //Add color to color array
		// colorArray.push("Magenta");

		// //Print color array to test
		// console.log(colorArray);

		// //Create object to hold horse names and colors
		// horseObject = {}

		// //Create function that adds horse array and color array to object
		// function horses(horseObject, horseArray, colorArray){
		// 	for(var i = 0; i < horseArray.length; i++){
		// 		horseObject[horseArray[i]] = colorArray[i];
		// 	};
		// 	console.log(horseObject);
		// }

		// //Call the horses function
		// horses(horseObject, horseArray, colorArray);


		// //Create car constructor
		// function Car(transmission, color, age){
		// 	this.transmission = transmission;
		// 	this.color = color;
		// 	this.age = age;
		// 	this.honk = function () {
		// 		console.log("Beep Beep Beeeeeep!");
		// 	}
		// }

		// //Create new instances of Car
		// var newCar = new Car("manual", "red", 50);
		// var secondCar = new Car("automatic", "green", 10);
		// var thirdCar = new Car("manual", "white", 1);

		// //Print instances of Car
		// console.log(newCar);
		// console.log(secondCar);
		// console.log(thirdCar);

		// //Call honk function on instance of Car
		// newCar.honk();

		// //Print use of property age 
		// console.log("This BMW is " + newCar.age + " years old");

		// //Print instance properties
		// console.log(newCar.age);
		// console.log(newCar.color);
		// console.log(newCar.transmission);

