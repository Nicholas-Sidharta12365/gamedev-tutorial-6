extends Node

var lives = 3
var music_player = null

func _ready():
	music_player = AudioStreamPlayer.new()
	add_child(music_player)

func play_music():
	music_player.stream = load("res://assets/Y2meta.app - TF2 Invasion Update - The Official Soundtrack ♫ (128 kbps).mp3")
	music_player.play()
	
func stop_music():
	if music_player != null:
		music_player.stop()
