extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_area_entered(area):
	visible = false
	position.x += 10000
	Shared.Score += 50
	Shared.eating = true
	Shared.IS_POWERED = true
	Shared.PowerTimer += 6
