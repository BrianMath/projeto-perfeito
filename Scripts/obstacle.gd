extends Area2D

var speed = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	position.y += speed * delta

# Ao colidir com o barco, desacelere-o
func _on_body_entered(boat):
	if boat.is_in_group("boat"):
		boat.speed = 0
		self.queue_free()
