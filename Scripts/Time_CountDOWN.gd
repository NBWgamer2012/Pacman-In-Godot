extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready():
	while true:
		await get_tree().create_timer(1).timeout
		if Shared.PowerTimer > 0:
			Shared.PowerTimer -= 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Shared.PowerTimer > 6:
		Shared.PowerTimer = 6
