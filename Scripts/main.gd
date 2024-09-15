extends Node2D
@onready var boat = $Boat

@onready var audio = $Boat/AudioStreamPlayer2D

# Um obstáculo chegou no fim do mapa
func _on_obstacles_killer_area_entered(obstacle):
	obstacle.queue_free()


func _on_farol_body_entered(_body):
	if boat.is_in_group("boat"):
		get_tree().change_scene_to_file("res://Scenes/the_end.tscn")


func _on_audio_stream_player_2d_finished():
	audio.play(randf_range(0.0, 55.0))
