extends Node

const TRAIN = preload("res://Train/Train.tscn")
const OBSTACLE = preload("res://Obstacles/Obstacle.tscn")


const instributors_textures = [
	preload("res://Graphics/Instributor/instributor_blue.png"),
	preload("res://Graphics/Instributor/instributor_green.png"),
	preload("res://Graphics/Instributor/instributor_red.png"),
	preload("res://Graphics/Instributor/instributor_purple.png")
]
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.current_score = 0
	var train = TRAIN.instance()
	train.position = $TrainStartPosition.get_children()[randi() % $TrainStartPosition.get_child_count()].position
	train.position.x = 210
	add_child(train)
	var train2 = TRAIN.instance()
	train2.position = $TrainStartPosition.get_children()[randi() % $TrainStartPosition.get_child_count()].position
	train2.position.x = 510
	add_child(train2)
	var train3 = TRAIN.instance()
	train3.position = $TrainStartPosition.get_children()[randi() % $TrainStartPosition.get_child_count()].position
	train3.position.x = 810
	add_child(train3)
	var train4 = TRAIN.instance()
	train4.position = $TrainStartPosition.get_children()[randi() % $TrainStartPosition.get_child_count()].position
	train4.position.x = 1110
	add_child(train4)
	var train5 = TRAIN.instance()
	train5.position = $TrainStartPosition.get_children()[randi() % $TrainStartPosition.get_child_count()].position
	train5.position.x = 1410
	add_child(train5)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = "Score: " + str(Global.current_score)


func _on_TrainTimer_timeout():
	var train = TRAIN.instance()
	train.position = $TrainStartPosition.get_children()[randi() % $TrainStartPosition.get_child_count()].position
	add_child(train)


func _on_ObstacleTimer_timeout():
	var obstacle = OBSTACLE.instance()
	randomize()
	obstacle.get_node("Sprite").set_texture(instributors_textures[randi() % instributors_textures.size()])
	obstacle.position.y += 25
	add_child(obstacle)


func _on_ScoreTimer_timeout():
	Global.current_score += 1
