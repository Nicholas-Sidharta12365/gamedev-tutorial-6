extends Button

export(String) var level

func _on_Button_pressed() -> void:
	if level == "1":
		get_tree().change_scene("res://scenes/Level 1.tscn")
	else:
		get_tree().change_scene("res://scenes/Level 2.tscn")
