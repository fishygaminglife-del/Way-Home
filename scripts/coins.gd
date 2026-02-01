extends Node2D
var coinbody1 = false
var coinbody2 = false
var coinbody3 = false
var coinbody4 = false
var coinbody5 = false
var coinbody6 = false

func _ready() -> void:
	pass 




func _on_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and coinbody1 == false:
		coinbody1 = true
		$Coin6.visible = false
		$Coin6/Area/Coin12d.disabled = true
		Global.coins += 1
		body.get_node("CoinLabel").text = str(Global.coins)
func _on_area_1_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and coinbody2 == false:
		coinbody2 = true
		$Coin4/Area1/Coin12d.disabled = true
		$Coin4.visible = false
		Global.coins += 1
		body.get_node("CoinLabel").text = str(Global.coins)	
func _on_area_2_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and coinbody3 == false:
		coinbody3 = true
		$Coin2.visible = false
		$Coin2/Area2/Coin12d.disabled = true
		Global.coins += 1
		body.get_node("CoinLabel").text = str(Global.coins)	
func _on_area_3_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and coinbody4 == false:
		coinbody4 = true
		$Coin1/Area3/Coin12d.disabled = true
		$Coin1.visible = false
		Global.coins += 1
		body.get_node("CoinLabel").text = str(Global.coins)	
func _on_area_4_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and coinbody5 == false:
		coinbody5 = true
		$Coin3.visible = false
		$Coin3/Area4/Coin12d.disabled = true
		Global.coins += 1
		body.get_node("CoinLabel").text = str(Global.coins)	
func _on_area_5_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and coinbody6 == false:
		coinbody6 = true
		$Coin5/Area5/Coin12d.disabled = true
		$Coin5.visible = false
		Global.coins += 1
		body.get_node("CoinLabel").text = str(Global.coins)
