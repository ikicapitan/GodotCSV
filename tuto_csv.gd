extends Node2D


var items = []

# Called when the node enters the scene tree for the first time.
func _ready():
	load_csv()



func load_csv():
	var file = File.new()
	var result
	file.open("res://data/items.dat", file.READ)
	while !file.eof_reached():
		var csv = file.get_csv_line ()
		if(csv.size() > 2):
			items.append(csv)
			if(csv[1] == "sword"):
				print(csv)
	file.close()
	
		
	
