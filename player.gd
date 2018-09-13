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
	if Input.is_action_pressed("player_1_up"):
		self.position.y -= speed *delta
	if Input.is_action_pressed("player_1_down"):
		self.position.y += speed *delta
	pass

##Get player input for change in movement vector
#func get_input():
#	#set the player velocity every physics update
#	velocity = Vector2()
#
#	#Player moves up
#	if Input.is_action_pressed("player_1_up"):
#		velocity.y = -1
#	#Player moves down
#	if Input.is_action_pressed("player_1_down"):
#		velocity.y = 1
#
#	#Player speed is calculated by velocity multipled by speed
#	velocity = velocity * speed
#
##Player movement is processed here
#func _physics_process(delta):
#	#Get the input from the player
#	get_input()
#	#Calculate the player velocity from the vector set by player input
#	move_and_slide(velocity)