extends Node

var coins = 0

@onready var hud: CanvasLayer = %HUD

func coin_picked_up():
	coins += 1
	hud.update_score(coins)
