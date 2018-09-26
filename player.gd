extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

#Create the Vector which the player moves on
var velocity = Vector2()

#Speed at which the player paddle moves
export var speed = 1

#Direction in which ball moves
export var ball_dir = 1

#Player identification for score
export var player_number = 1

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	var which = get_name()
	if Input.is_action_pressed(which+"_up"):
		self.position.y -= speed *delta
	if Input.is_action_pressed(which+"_down"):
		self.position.y += speed *delta

func _on_area_entered(area):
	if area.get_name() == "ball":
		# assign new direction
		area.direction = Vector2(ball_dir, randf() * 2 - 1).normalized()
		area.last_player = self.player_number
		print(area.last_player)
