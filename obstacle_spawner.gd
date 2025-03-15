extends Node2D

@onready var obstacle = $Obstacle

@export var spawn_range = 4000

func _ready():
	obstacle.position = random_position(500)
	
	for i in 100:
		var new_obstacle = obstacle.duplicate()
		new_obstacle.position = random_position()
		add_child(new_obstacle)

func random_position(rand_radius = spawn_range):
	var rand_x = randf_range(-rand_radius, rand_radius)
	var rand_y = randf_range(-rand_radius, rand_radius)
	var new_position = Vector2(rand_x, rand_y)
	return new_position
