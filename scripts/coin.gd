extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var manager: Node = %Manager

func _on_body_entered(_body: Node2D) -> void:
	animation_player.play("pickup")
	manager.coin_picked_up()
