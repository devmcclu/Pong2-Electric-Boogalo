extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var score_text
var player

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_area_entered(area):
	if area.get_name() == "ball":
		if area.last_player == 0:
			area.reset()
		else:
			score_text = get_node("../../CanvasLayer/Container/HBoxContainer/player_"+str(area.last_player)+"_score")
			player = get_node("../../players/player_"+str(area.last_player))
			player.score += 1
			score_text.text = "Player " + str(area.last_player) + ": " + str(player.score)
			area.reset()
	pass # replace with function body
