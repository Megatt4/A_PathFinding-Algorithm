extends LineEdit

func _process(delta):
	update()

var GridSize_Range = range(1,99)

var test = 19

var NT = 4

onready var GridGenerator_Script = load("res://Scripts/Grid Generator.gd").new()

func _on_LineEdit_text_entered(new_text):
	if new_text.is_valid_integer():
			NT = str(new_text)
			for i in GridSize_Range:
				var i2 = str(i)
				if NT == i2:
					GridGenerator_Script.ValidGridSize = true
					NT = i2
			if NT.is_valid_integer():
				self.clear()
	else:
		GridGenerator_Script.ValidGridSize = false
		self.clear()
