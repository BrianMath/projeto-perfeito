extends Node


func _on_audio_stream_player_2d_finished():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
