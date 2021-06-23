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


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = "Score: " + str(Global.current_score)


func _on_TrainTimer_timeout():
	var train = TRAIN.instance()
	add_child(train)
	train.position = $TrainStartPosition.get_children()[randi() % $TrainStartPosition.get_child_count()].position


func _on_ObstacleTimer_timeout():
	var obstacle = OBSTACLE.instance()
	randomize()
	obstacle.get_node("Sprite").set_texture(instributors_textures[randi() % instributors_textures.size()])
	add_child(obstacle)


func _on_ScoreTimer_timeout():
	Global.current_score += 1
