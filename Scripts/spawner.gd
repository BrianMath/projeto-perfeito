extends Node2D
@export var limite: int
@export var inicio: int

@onready var timer = $Timer
@onready var boat = $"../Boat"
const OBSTACLE = preload("res://Scenes/obstacle.tscn")

var tempoI = 2
var tempoF = 5

func _process(delta):
	if boat:
		position.y = boat.position.y - 600

func _ready():
	randomize()

func _on_timer_timeout():
	timer.start(randf_range(tempoI, tempoF))
	var obs = OBSTACLE.instantiate()

	obs.position = Vector2(randi_range(inicio, limite), position.y)
	get_parent().add_child(obs)
