extends Node2D

##onready var nt = get_node("/root/Main Scene/Grid Size - UI/LineEdit").NT

var ValidGridSize = false

#Size Of the grid (adjustable depending on GridSize var)
var SizeX = Vector2(100,100)
var SizeY = Vector2(100,100)

#Size of grid in a 1x1 basis ( User Input )
onready var GridSize = get_node("/root/Main Scene/Grid Size - UI/LineEdit").NT

func _process(delta):
	GridSize = get_node("/root/Main Scene/Grid Size - UI/LineEdit").NT
	update()

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
	
	# Squares are 30x30

