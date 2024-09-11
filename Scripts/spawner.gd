extends Node2D

@onready var timer = $Timer
@onready var boat = $"../Boat"
const OBSTACLE = preload("res://Scenes/obstacle.tscn")

func _process(delta):
	if boat:
		position.y = boat.position.y - 600

func _on_timer_timeout():
	timer.start(randf_range(1, 5))
	var obs = OBSTACLE.instantiate()

	obs.position = Vector2(randi_range(20, 1900), position.y)
	get_parent().add_child(obs)
