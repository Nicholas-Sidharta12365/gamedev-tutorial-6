extends ColorRect

var link_button: LinkButton

func _ready() -> void:
	global.stop_music()
	link_button = $LinkButton
	
	link_button.visible = false
	
	$Timer.start()

# Called when the timer reaches its timeout
func _on_Timer_timeout() -> void:
	link_button.visible = true
	global.lives = 3
	$Timer2.start()


func _on_Timer2_timeout() -> void:
	$AudioStreamPlayer.stop()
