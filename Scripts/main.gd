extends Node2D
@onready var boat = $Boat

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# Um obstáculo chegou no fim do mapa
func _on_obstacles_killer_area_entered(obstacle):
	obstacle.queue_free()


func _on_farol_body_entered(body):
	if boat.is_in_group("boat"):
		get_tree().change_scene_to_file("res://node_2d.tscn")
