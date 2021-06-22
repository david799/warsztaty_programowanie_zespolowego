extends AnimatedSprite

var train_list = ["train1", "train2", "train3", "train4", "train5"]

# Called when the node enters the scene tree for the first time.
func _ready():
	animation = train_list[randi() % train_list.size()]

func _process(delta):
	position.x -= 300 * delta
	

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

