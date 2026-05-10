extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func Pac_Man(area):
	visible = false
	position.x += 10000
	Shared.Score += 10
	Shared.eating = true
