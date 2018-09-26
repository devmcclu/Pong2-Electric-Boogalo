extends Area2D

#Speed of ball
export var speed = 100
#initial ball movement
var direction = Vector2(-1, 0)
#Get the last player who touched the ball
var last_player = 0

func _ready():
	# Get position of ball on spawn
	position = self.position
	pass

func _process(delta):
	#Create new position of ball every frame
	position += direction * speed * delta
	pass
