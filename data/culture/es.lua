-- Copyright © 2008-2023 Pioneer Developers. See AUTHORS.txt for details
-- Licensed under the terms of the GPL v3. See licenses/GPL-3.txt

-- source http://www.studentsoftheworld.info/penpals/stats.php3?Pays=ESP

local CultureName = require './common'

local male = {
	"Adrian",
	"Aitor",
	"Albert",
	"Alberto",
	"Alejandro",
	"Alex",
	"Alfonso",
	"Ander",
	"Andrés",
	"Andy",
	"Angel",
	"Anthony",
	"Antonio",
	"Arnau",
	"Asier",
	"Beñat",
	"Borja",
	"Bruno",
	"Carlos",
	"Christian",
	"Cristian",
	"Dani",
	"Daniel",
	"Dario",
	"David",
	"Diego",
	"Domingo",
	"Enrique",
	"Erik",
	"Fernando",
	"Fran",
	"Francisco",
	"Gabriel",
	"George",
	"Gonzalo",
	"Gorka",
	"Guille",
	"Guillermo",
	"Hugo",
	"Ignacio",
	"Iker",
	"Ismael",
	"Ivan",
	"Jaime",
	"Javi",
	"Javier",
	"Jesús",
	"Joan",
	"Joaquin",
	"Jon",
	"Jonathan",
	"Jorge",
	"Jose Antonio",
	"Jose luis",
	"Jose miguel",
	"Jose",
	"Josep",
	"José Manuel",
	"Juan Carlos",
	"Juan",
	"Juanma",
	"Julián",
	"Lucas",
	"Luis",
	"Manolo",
	"Manu",
	"Manuel",
	"Marc",
	"Marcelo",
	"Marco",
	"Marcos",
	"Mario",
	"Martin",
	"María",
	"Miguel Angel",
	"Miguel",
	"Mohamed",
	"Nacho",
	"Nevil",
	"Nicolas",
	"Pablo",
	"Paco",
	"Paul",
	"Pedro",
	"Pepe",
	"Rafa",
	"Rafael",
	"Ramón",
	"Raul",
	"Roberto",
	"Ruben",
	"Samuel",
	"Santi",
	"Saul",
	"Sergi",
	"Sergio",
	"Tomas",
	"Victor",
	"Álvaro",
	"Óscar"
}

local female = {
	"Aida",
	"Aina",
	"Ainhoa",
	"Alba",
	"Alejandra",
	"Alexandra",
	"Alice",
	"Alicia",
	"Almudena",
	"Amanda",
	"Ana",
	"Andrea",
	"Ane",
	"Angela",
	"Anna",
	"Ariadna",
	"Bea",
	"Beatriz",
	"Belen",
	"Blanca",
	"Carla",
	"Carmen",
	"Carolina",
	"Celia",
	"Clara",
	"Clàudia",
	"Cristina",
	"Daniela",
	"Diana",
	"Elena",
	"Elisa",
	"Emma",
	"Estefania",
	"Estela",
	"Esther",
	"Eva",
	"Fatima",
	"Gema",
	"Gloria",
	"Helena",
	"Inma",
	"Inés",
	"Irene",
	"Isa",
	"Isabel",
	"Jennifer",
	"Jessica",
	"Judit",
	"Judith",
	"Julia",
	"Laia",
	"Lara",
	"Laura",
	"Leire",
	"Leticia",
	"Lidia",
	"Lorena",
	"Lucia",
	"Luna",
	"Maite",
	"Mari",
	"Maria",
	"Marina",
	"Mariona",
	"Marta",
	"Mery",
	"Mireia",
	"Miriam",
	"Mònica",
	"Naiara",
	"Natalia",
	"Nerea",
	"Noelia",
	"Nora",
	"Nuria",
	"Olga",
	"Paloma",
	"Patri",
	"Patricia",
	"Paula",
	"Pilar",
	"Pàola",
	"Raquel",
	"Rocío",
	"Rosa",
	"Sandra",
	"Sara",
	"Silvia",
	"Sofía",
	"Sonia",
	"Stella",
	"Tamara",
	"Tania",
	"Uxue",
	"Vanessa",
	"Verónica",
	"Vicky",
	"Victoria",
	"Yaiza"
}

local surname = {
	"Aguilar",
	"Alonso",
	"Alvarez",
	"Andres",
	"Arias",
	"Blanco",
	"Bravo",
	"Caballero",
	"Cabrera",
	"Calvo",
	"Campos",
	"Cano",
	"Carmona",
	"Carrasco",
	"Castillo",
	"Castro",
	"Cortes",
	"Crespo",
	"Cruz",
	"Delgado",
	"Diaz",
	"Diez",
	"Dominguez",
	"Duran",
	"Fernandez",
	"Ferrer",
	"Flores",
	"Fuentes",
	"Garcia",
	"Garrido",
	"Gil",
	"Gimenez",
	"Gomez",
	"Gonzalez",
	"Guerrero",
	"Gutierrez",
	"Hernandez",
	"Herrera",
	"Herrero",
	"Hidalgo",
	"Ibanez",
	"Iglesias",
	"Izquierdo",
	"Jimenez",
	"Leon",
	"Lopez",
	"Lorenzo",
	"Lozano",
	"Marcos",
	"Marin",
	"Marquez",
	"Martin",
	"Martinez",
	"Medina",
	"Mendez",
	"Menendez",
	"Merino",
	"Molina",
	"Montero",
	"Mora",
	"Morales",
	"Moreno",
	"Moya",
	"Munoz",
	"Navarro",
	"Nieto",
	"Nunez",
	"Ortega",
	"Ortiz",
	"Pardo",
	"Pascual",
	"Pastor",
	"Pena",
	"Perez",
	"Prieto",
	"Ramirez",
	"Ramos",
	"Redondo",
	"Rey",
	"Reyes",
	"Rodriguez",
	"Roman",
	"Romero",
	"Rubio",
	"Ruiz",
	"Saez",
	"Sanchez",
	"Santos",
	"Sanz",
	"Serrano",
	"Soler",
	"Soto",
	"Suarez",
	"Torres",
	"Vazquez",
	"Vega",
	"Velasco",
	"Vicente",
	"Vidal",
	"Vila"
}

local Spanish = CultureName.New({
	male = male,
	female = female,
	surname = surname,
	name = "Spanish",
	code = "es",
	replace = {
		['ñ'] = 'n', ['Ñ'] = 'N',
		['á'] = 'a', ['Á'] = 'A',
		['ó'] = 'o', ['Ó'] = 'O',
		['ú'] = 'u', ['Ú'] = 'U',
		['é'] = 'e', ['É'] = 'E',
	}
})


return Spanish