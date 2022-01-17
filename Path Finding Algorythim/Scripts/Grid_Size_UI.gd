extends LineEdit

func _process(delta):
	update()

var GridSize_Range = range(2,21)

var test = 19

var NT = 5

onready var GridGenerator_Script = load("res://Scripts/Grid Generator.gd").new()

func _on_LineEdit_text_entered(new_text):
	if new_text.is_valid_integer():
		var new_text2 = int(new_text)
		for i in GridSize_Range:
			if new_text2 == i:
				NT = int(new_text)
				print(NT)
				GridGenerator_Script.ValidGridSize = true
				break; # No need to keep running the loop
		self.clear()
	else:
		GridGenerator_Script.ValidGridSize = false
		self.clear()

#LESS TURN THIS INTO A SINGLETON BABYYYYYYYY



#	if new_text.is_valid_integer():
#			NT = str(new_text)
#			for i in GridSize_Range:
#				var i2 = str(i)
#				if NT == i2:
#					GridGenerator_Script.ValidGridSize = true
#					NT = i2
#			if NT.is_valid_integer():
#				self.clear()
#	else:
#		GridGenerator_Script.ValidGridSize = false
#		self.clear()

#run a process in here that says that every time something is inputted, grid pos is incremented

