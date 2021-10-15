extends Label

var GridSizeUI_Script = load("res://Scripts/Grid_Size_UI.gd").new()

func _process(delta):
	text = str(GridSizeUI_Script.NT)
