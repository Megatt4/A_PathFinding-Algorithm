extends Node2D

func _process(delta):
	update()

var GridSizeUI_Script = load("res://Scripts/Grid_Size_UI.gd").new()

var ValidGridSize = false

var NumForPerfectGrid = 20

#Size Of the grid (adjustable depending on GridSize var)
var SizeX = Vector2(100,100)
var SizeY = Vector2(100,100)

#Size of grid in a 1x1 basis ( User Input )
var GridSize = GridSizeUI_Script.NT

func JustDraw(intialposX, intialposY, LineColor, SpacingX, SpacingY):
	var OGposY = intialposY
	var OGposX = intialposX
	var intialposEndX = Vector2(100, 100)
	var intialposEndY = Vector2(100, 100)
	SizeX = Vector2(intialposEndY)
	SizeY = Vector2(intialposEndX)

	for i in range(GridSize):
		intialposX = intialposX + Vector2(SpacingX)

	for i in range(GridSize):
		intialposY = intialposY + Vector2(SpacingY)

	intialposEndX = intialposX
	intialposEndY = intialposY

	for i in range(GridSize + 1):
		draw_line(OGposY, intialposEndY, LineColor)
		OGposY = OGposY + Vector2(SpacingX)
		intialposEndY = intialposEndY + Vector2(SpacingX)
	
	for i in range(GridSize + 1):
		draw_line(OGposX, intialposEndX, LineColor)
		OGposX = OGposX + Vector2(SpacingY)
		intialposEndX = intialposEndX + Vector2(SpacingY)

func _draw():
	JustDraw(Vector2(0, 0), Vector2(0, 0), Color(1.0, 0.0, 0.0), Vector2(0, 30), Vector2(30, 0))

