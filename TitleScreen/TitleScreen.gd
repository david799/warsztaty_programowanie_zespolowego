extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.current_score > Global.high_score:
		Global.high_score = Global.current_score
		
	$HighScoreText.text = "High score: " + str(Global.high_score)


func _process(delta):
	if Input.is_action_just_pressed("jump"):
		get_tree().change_scene("res://Base/Base.tscn")
