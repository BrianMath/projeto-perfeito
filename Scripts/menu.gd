extends Node2D

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/control.tscn")


func _on_credits_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/credits.tscn")
