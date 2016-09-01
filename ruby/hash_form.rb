job_application = {
	name: "Sherianne Bolling",
	address: "342 East 53rd Street",
	email: "sb@gmail.com",
	phone: "(764)873-9823",
	shade_blue: "indigo",
	wallpaper: "Abstract woodsy scenes (no squirrels)",
	ombre: "Fierce",
	orange: likes = "no",
	#key = red: "no"
}

#Driver code to change a value of a key
job_application[:ombre] = "So last season"

#Driver code to add a key and value
job_application[:hired] = "yes"

#Print to check if worked
p job_application


job_application[:name] + job_application[:address]

#Check if changed hash - does not change hash
p job_application

#Prints the values added (does not change hash)
p job_application[:name] + job_application[:address]

#Just prints no not the variable
p job_application[:orange]

# You can print the value of variable like from within a value
p likes

#Gives error
p job_application[:red]

#Gives error
p key

