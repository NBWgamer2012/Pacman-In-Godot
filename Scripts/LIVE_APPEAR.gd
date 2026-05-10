extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Shared.lives == 3:
		get_child(0).visible = true
		get_child(1).visible = true
		get_child(2).visible = true
	elif Shared.lives == 2:
		get_child(0).visible = true
		get_child(1).visible = true
		get_child(2).visible = false
	elif Shared.lives == 1:
		get_child(0).visible = true
		get_child(1).visible = false
		get_child(2).visible = false
	elif Shared.lives < 1:
		get_child(0).visible = false
		get_child(1).visible = false
		get_child(2).visible = false
		
