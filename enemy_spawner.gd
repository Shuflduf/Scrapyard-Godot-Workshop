extends Node2D

const ENEMY = preload("res://enemy.tscn")
@export var spawn_radius = 800

var player

func _ready():
	player = get_tree().get_first_node_in_group("Player")

func _on_timer_timeout():
	var spawn_angle = randf_range(0, TAU)
	var spawn_x = sin(spawn_angle)
	var spawn_y = cos(spawn_angle)
	var spawn_pos = Vector2(spawn_x, spawn_y) * spawn_radius
	spawn_pos += player.position
	
	var new_enemy = ENEMY.instantiate()
	new_enemy.position = spawn_pos
	add_child(new_enemy)
