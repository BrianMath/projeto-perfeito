extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# Um obstáculo chegou no fim do mapa
func _on_obstacles_killer_area_entered(obstacle):
	obstacle.queue_free()
