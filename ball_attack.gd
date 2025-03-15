extends Node2D

@export var speed = 2.0
@export var speed_increase = 0.2

func _process(delta):
	rotation += speed * delta

func _on_area_2d_body_entered(body):
	if body.is_in_group("Enemy"):
		body.queue_free()
		speed += speed_increase
