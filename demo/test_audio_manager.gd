extends Node2D

@export var music:AudioStream = null
@export var sound_effect:AudioStream = null

@onready var button_music:Button = $VBox/ButtonMusic
@onready var button_music_stop:Button = $VBox/ButtonMusicStop
@onready var button_music_fadeout:Button = $VBox/ButtonMusicFadeOut
@onready var button_sound:Button = $ButtonSound

func _ready():
	button_music.pressed.connect(func() -> void:
		AudioManager.play_music(music)
	)

	button_music_stop.pressed.connect(func() -> void:
		AudioManager.stop_music()
	)
	
	button_music_fadeout.pressed.connect(func() -> void:
		AudioManager.fade_out_music(1.5)
	)

	button_sound.pressed.connect(func() -> void:
		AudioManager.play_sound_effect(sound_effect)
	)
