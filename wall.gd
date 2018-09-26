extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

#Change y direction of ball
export var y_dir = 1

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_wall_top_area_entered(area):
	if area.get_name() == "ball":
		area.direction.y = y_dir
	pass # replace with function body
