extends Area2D

const TIME_WHEN_DEAD = 0.5
const DEFAULT_TIME_SCALE = 1.0

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale = TIME_WHEN_DEAD
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = DEFAULT_TIME_SCALE
	get_tree().reload_current_scene()
