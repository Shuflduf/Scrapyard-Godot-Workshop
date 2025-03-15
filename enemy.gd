extends CharacterBody2D

@export var speed = 100
@export var distance_threshold = 130

var player

func _ready():
	player = get_tree().get_first_node_in_group("Player")

func _process(delta):
	var vec_to_player = player.position - position
	var target_dir = vec_to_player.normalized()
	velocity = target_dir * speed
	
	var player_dist = vec_to_player.length()
	if player_dist < distance_threshold:
		get_tree().quit()
	
	move_and_slide()
