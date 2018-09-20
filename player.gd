extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

#Create the Vector which the player moves on
var velocity = Vector2()

#Speed at which the player paddle moves
export var speed = 1

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	var which = get_name()
	if Input.is_action_pressed(which+"_up"):
		self.position.y -= speed *delta
	if Input.is_action_pressed(which+"_down"):
		self.position.y += speed *delta
	pass