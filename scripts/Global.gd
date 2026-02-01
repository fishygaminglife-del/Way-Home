extends Node

var button_unlocked := false
var hearts_remain = 3
var hearts_remain3 = 4
var button_unlocked2 := false
var check2 := false
var check3 := false
var coins:= 0
var player := AudioStreamPlayer.new()

func _ready() -> void:
	add_child(player)  

func update_hearts():
	hearts_remain -= 1

func update_hearts3():
	hearts_remain3 -= 1
		
func play(stream: AudioStream):
	player.stop()
	player.stream = stream
	player.stream.loop = true
	player.play()
