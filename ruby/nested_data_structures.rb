
#Coyotes

#closet nested data structure

closet = {
	dresses: {
		formal: {
			sequin: [
				"black",
				"blue",
				"green",
				"nude"
			],
			silk:[
				"red",
				"brown",
			],
			embroidered:[
				"white"
			]
		},
		casual:{
			jersey:[
				"grey",
				"blue"
			],
			cotton:[
				"white",
				"black"
			]
		},
		cocktail:{
			sequin: [
				"black",
				"white"
			],
			silk:[
				"pink",
				"tan"
			],
			embroidered: [
				"yellow"
			]
		}
	},
	blouses: {
		cowl: 4,
		boat: 2,
		peter_pan:1
	},
	skirts:{
		circle: 4,
		pencil: 2
	},
	pants:{
		skinny_jeans:2,
		slacks: 4
	},
	sweaters:{
		hoodie: "black",
		pull_over: "white"
	},
	shirts:{
		short_sleeve: 5,
		long_sleeve: 2,
		tank: 7
	},

}

#p closet

#Should print "black"
p closet[:dresses][:formal][:sequin][0]

#Should print "blue"
p closet[:dresses][:casual][:jersey][1]

#Should print 2
p closet[:pants][:skinny_jeans]

#Should print "black"
p closet[:sweaters][:hoodie]

#Should print all for cocktail dresses
p closet[:dresses][:cocktail]

#Should print all for skirts
p closet[:skirts]

#Should change tank to 4
p closet[:shirts][:tank] = 4

#p closet



=begin
Bobolinks

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
=end
