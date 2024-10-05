extends CharacterBody2D


const player_speed = 400
const JUMP_VELOCITY = -400.0
var rotation_speed = 5

func _physics_process(delta):
	var rotation_direction = Input.get_axis("left", "right")
	rotation += rotation_direction * rotation_speed * delta
	
	var player_direction = Input.get_axis("down", "up")
	velocity = -player_direction * player_speed *transform.y
	
	
	move_and_slide()
