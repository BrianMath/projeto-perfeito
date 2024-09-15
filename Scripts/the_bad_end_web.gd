extends Node2D

@onready var audio = $AudioStreamPlayer2D

func _on_audio_stream_player_2d_finished():
	audio.play()
