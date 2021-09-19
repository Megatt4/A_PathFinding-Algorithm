extends LineEdit

var GridSize_Range = range(1,99)

var NT = 1

onready var GridGenerator_Script = load("res://Scripts/Grid Generator.gd").new()

func _on_LineEdit_text_entered(new_text):
	if new_text.is_valid_integer():
			NT = str(new_text)
			for i in GridSize_Range:
				var i2 = str(i)
				if NT == i2:
					GridGenerator_Script.ValidGridSize = true
					self.clear()
	else:
		GridGenerator_Script.ValidGridSize = false
		self.clear()
