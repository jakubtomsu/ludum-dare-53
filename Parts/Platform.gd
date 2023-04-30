extends PathFollow2D

export var speed: float = 100.0

func _process(delta):
	offset += speed * delta
