extends CanvasLayer

@onready var score: Label = $Score

func update_score(amount: int) -> void:
	score.text = "Coins: " + str(amount)
