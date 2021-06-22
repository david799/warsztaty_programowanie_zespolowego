extends Node

const TRAIN = preload("res://Train/Train.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TrainTimer_timeout():
	var train = TRAIN.instance()
	add_child(train)
	train.position = $TrainStartPosition.get_children()[randi() % $TrainStartPosition.get_child_count()].position
