extends Node2D

func _ready():
	var turn = 1
	var points = 0
	
		
	

func _on_button_pressed():
	print('pressed')
	get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")
