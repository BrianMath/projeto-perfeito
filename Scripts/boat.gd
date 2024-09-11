extends CharacterBody2D

const MAX_SPEED := 1000
@export var speed := 200
@export var acceleration := 10

func get_input(delta):
	#look_at(get_global_mouse_position())
	#velocity = transform.x * Input.get_axis("move_down", "move_up") * SPEED
	
	var direction: Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	if direction:
		speed = min(speed + acceleration, MAX_SPEED)
		velocity = speed * direction
	else:
		speed = 0
		velocity = velocity.lerp(Vector2.ZERO, acceleration*delta*0.15)


func _physics_process(delta):
	get_input(delta)
	move_and_slide()
