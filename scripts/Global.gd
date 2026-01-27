extends Node

var button_unlocked := false
var hearts_remain = 3
var hearts_remain3 = 4
var button_unlocked2 := false
var check2 := false
var check3 := false

var player := AudioStreamPlayer.new()

func _ready() -> void:
	add_child(player)  

func update_hearts():
	hearts_remain -= 1
	if hearts_remain < 1:
		await get_tree().create_timer(0.2).timeout
		get_tree().reload_current_scene()
		hearts_remain = 3

func update_hearts3():
	hearts_remain3 -= 1
	if hearts_remain3 < 1:
		await get_tree().create_timer(0.2).timeout
		get_tree().reload_current_scene()
		hearts_remain3  = 4
		
func play(stream: AudioStream):
	player.stop()
	player.stream = stream
	player.stream.loop = true
	player.play()
