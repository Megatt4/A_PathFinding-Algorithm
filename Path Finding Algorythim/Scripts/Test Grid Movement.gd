extends Node2D

onready var Original_Grid = get_node("/root/Main Scene/Grid Generator")

var StartPoint = Original_Grid.GridPosition

var EndPoint = Original_Grid.intialposEndY + Original_Grid.intialposEndX

func _process(delta):
	StartPoint = Original_Grid.GridPosition
	EndPoint = Original_Grid.intialposEndY + Original_Grid.intialposEndX
