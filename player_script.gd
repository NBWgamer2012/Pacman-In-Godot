extends CharacterBody2D
var startx :int = 1
var starty :int = 68
@onready var sprite_2d = $AnimatedSprite2D
var speed :float = 1
var direction = "right"
var right=1
var left=1
var up=1
var down = 1
@onready var col = $CollisionShape2D
@onready var label = $"../Label"

var wrap1 :bool = false
var wrap2 :bool = false







var time :int = 0.1
var debugging
var xchange = 0
var ychange = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2i(startx, starty)
	sprite_2d.animation = "idle"
	while true:
		await get_tree().create_timer(0.2).timeout
		Shared.eating = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):


	if direction == "right":
		sprite_2d.animation = "right"
		if right != 0:
			position.x += speed

	elif direction == "up":
		sprite_2d.animation = "up"
		if up != 0:
			position.y += -speed

	elif direction == "down":
		sprite_2d.animation = "down"
		if down != 0:
			position.y += speed
			
	elif direction == "left":
		sprite_2d.animation = "left"
		if left != 0:
			position.x -= speed

	if Input.is_action_pressed("right") and right !=0 :
		direction = "right"
	if Input.is_action_pressed("down") and down != 0:
		direction = "down"
	if Input.is_action_pressed("up") and up != 0:
		direction = "up"
	if Input.is_action_pressed("left") and left != 0:
		direction = "left"
	
	if Input.is_action_just_pressed("DEBUG"):
		Shared.lives -= 1
	

	if Shared.eating:
		speed = 0.8

	elif wrap1 == true:
		speed= 0.8
	elif wrap2 == true:
		speed=0.8
	else:
		speed=1	
	if position.x < -113:
		position.x = 113
	elif position.x > 113:
		position.x = -113

		

	label.text = str(left, right, down, up, " ", Shared.IS_POWERED, " ", speed, " ", Shared.eating, " ", Shared.lives, " ", Shared.PowerTimer)
















func rout(body):
	right = 0


func iright(body):
	right = 1


func ileft(body):
	left = 1


func oleft(body):
	left = 0


func iup(body):
	up = 1


func oup(body):
	up = 0


func idown(body):
	down = 1


func odown(body):
	down = 0


func Warp1(area):
	wrap1 = true


func warp1exit(area):
	wrap1 = false


func warp2(area):
	wrap2 = true


func warp2exit(area):
	wrap2 = false
