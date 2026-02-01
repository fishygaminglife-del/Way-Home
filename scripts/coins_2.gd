extends Node2D


var coinbody32 = false
var coinbody37 = false
var coinbody36 = false
var rando = randi_range(1, 7)
func _ready() -> void:
	$AnimatedSprite2D.play("default")
	$Coin7.play("default")
	$Coin6.play("default")
	if rando < 2:
		$"../Coin8".visible = true
		$"../Coin9".visible = false
	elif rando < 4:
		$"../Coin8".visible = false
		$"../Coin9".visible = true
	
	else:
		$"../Coin8".visible = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and coinbody32 == false:
		coinbody32 = true
		$AnimatedSprite2D.visible = false
		$AnimatedSprite2D/Area2D/CollisionShape2D.disabled = true
		Global.coins += 1
		body.get_node("CoinLabel2").text = str(Global.coins)


func _on_area_7_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and coinbody37 == false:
		coinbody37 = true
		$Coin7.visible = false
		$Coin7/Area7/Coin7d.disabled = true
		Global.coins += 1
		body.get_node("CoinLabel2").text = str(Global.coins)

func _on_area_6_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and coinbody36 == false:
		coinbody36 = true
		$Coin6.visible = false
		$Coin6/Area6/Coin62d.disabled = true
		Global.coins += 1
		body.get_node("CoinLabel2").text = str(Global.coins)


func _on_area_8_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and rando <2:
		body.position = Vector2(172, 86)


func _on_area_9_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and rando > 2 and rando < 4:
		body.position = Vector2(609, 401)
