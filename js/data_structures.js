var colorArray = ["blue", "green", "white", "black"];
var horseArray = ["Whispers", "Johnny", "Carrots", "Richard"];

horseArray.push("Ed");
//console.log(horseArray);

colorArray.push("Magenta");
//console.log(colorArray);

horseObject = {}

function Horses(horseObject, horseArray, colorArray){
	for(var i = 0; i < horseArray.length; i++){
		horseObject[horseArray[i]] = colorArray[i];
	};
	console.log(horseObject);
}

Horses(horseObject, horseArray, colorArray);



