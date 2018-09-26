extends Area2D

#Change y direction of ball
export var y_dir = 1

func _on_wall_top_area_entered(area):
	if area.get_name() == "ball":
		area.direction.y = y_dir
