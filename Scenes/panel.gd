extends Panel
@onready var spawner = $"../../Spawner"
@onready var spawner_2 = $"../../Spawner2"
@onready var spawner_3 = $"../../Spawner3"
@onready var spawner_4 = $"../../Spawner4"
@onready var spawner_5 = $"../../Spawner5"
@onready var spawner_6 = $"../../Spawner6"
@onready var nuvens = $"../Nuvens"

var tempo: float = 190.00
var Minuto: int = 5
var Segundo: int = 0
var Milisegundo: int = 0

func _process(delta) -> void:
	tempo -= delta
	Minuto = fmod(tempo, 3600) / 60
	Segundo = fmod(tempo, 60)
	Milisegundo = fmod(tempo, 1) * 100
	
	#tempestade
	if(tempo <= 140.0):
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
		nuvens.visible = true
		get_tree().create_tween()
	
	$Milisegundo.text = "%0.3d" % Milisegundo
	$Segundo.text = "%0.2d." % Segundo
	$Minuto.text = "%0.2d:" % Minuto
