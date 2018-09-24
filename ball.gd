extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

#Speed of ball
export var speed = 100
#initial ball movement
var direction = Vector2(-1, 0)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	position = self.position
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	position += direction * speed * delta
	pass
