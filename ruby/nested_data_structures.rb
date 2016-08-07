#animal shelter nested data structure

animal_shelter = {
	animals: {
		dogs: {
			Vanilla:{
				good_with_kids: "no",
				good_with_other_animals: "no",
				status: "adopted" 
				},
			Dumpling:{
				good_with_kids: "yes",
				good_with_other_animals: "yes",
				status: "adopted" 
			}
		},
		cats: {
			Bean: {
				good_with_kids: "yes",
				good_with_other_animals: "no",
				status: "not adopted" 
				},
			Tamale:{
				good_with_kids: "no",
				good_with_other_animals: "no",
				status: "adopted" 
			}
		},
		birds: {
			Fred:{
				good_with_kids: "no",
				good_with_other_animals: "no",
				status: "not adopted", 
				colors: [
					"black",
					"white"
				]
				},
			Peewee:{
				good_with_kids: "yes",
				good_with_other_animals: "yes",
				status: "not adopted",
				colors: [
					"blue",
					"green"
				]
			}
		}
	},
	supplies_donated: {
		bedding: [
			"towels",
			"sheets"
		],
		food: [
			"Pedigree",
			"Purina",
			"Whole Earth Farms"
		],
		toys:[
			"balls",
			"chew toys",
			"puzzles",
			"kongs"
		]
	}
}

p animal_shelter[:supplies_donated][:toys][2]
#Should print puzzles
p animal_shelter[:animals][:dogs][:Dumpling][:status]
#Should print adopted
p animal_shelter[:animals][:cats][:Bean]
#Should print all info for Bean
p animal_shelter[:animals][:birds][:Fred][:colors][0]
#Should print black

