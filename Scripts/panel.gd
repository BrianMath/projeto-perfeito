extends Panel
@onready var spawner = $"../../Spawner"
@onready var spawner_2 = $"../../Spawner2"
@onready var spawner_3 = $"../../Spawner3"
@onready var spawner_4 = $"../../Spawner4"
@onready var spawner_5 = $"../../Spawner5"
@onready var spawner_6 = $"../../Spawner6"
@onready var raios = $"../Raios"
@onready var boat = $"../../Boat"

var endline: bool = false
var tempo: float = 120.00
var Minuto: int = 5
var Segundo: int = 0
var Milisegundo: int = 0

func _process(delta) -> void:
	tempo -= delta
	Minuto = fmod(tempo, 3600.0) / 60.0
	Segundo = fmod(tempo, 60)
	Milisegundo = fmod(tempo, 1) * 100
	
	#tempestade
	if(tempo <= 80.0 && (not endline)):
		spawner.tempoI = 0.1
		spawner.tempoF = 0.3
		spawner_6.tempoI = 0.1
		spawner_6.tempoF = 0.3
		spawner_2.tempoI = 0.5
		spawner_2.tempoF = 1
		spawner_4.tempoI = 0.5
		spawner_4.tempoF = 1
		spawner_3.tempoI = 0.7
		spawner_3.tempoF = 0.8
		raios.visible = true
	
	# game over
	if (tempo <= 0):
		get_tree().change_scene_to_file("res://Scenes/the_bad_end.tscn")
	
	$Milisegundo.text = "%0.3d" % Milisegundo
	$Segundo.text = "%0.2d." % Segundo
	$Minuto.text = "%0.2d:" % Minuto


func _on_end_line_body_entered(_body):
	if boat.is_in_group("boat"):
		endline = true
