
extends CharacterBody3D

@export var speed: float = 5.0
@export var gravity: float = 9.8
@export var jump_power: float = 5.0

var mobile_direction := Vector2.ZERO

func set_mobile_direction(value: Vector2):
    mobile_direction = value

func _physics_process(delta):
    if not is_on_floor():
        velocity.y -= gravity * delta

    if Input.is_action_just_pressed("ui_accept") and is_on_floor():
        velocity.y = jump_power

    var input_dir = Input.get_vector(
        "move_left",
        "move_right",
        "move_forward",
        "move_back"
    )

    if mobile_direction.length() > 0:
        input_dir = mobile_direction

    var direction = (transform.basis * Vector3(
        input_dir.x, 0, input_dir.y
    )).normalized()

    if direction:
        velocity.x = direction.x * speed
        velocity.z = direction.z * speed
    else:
        velocity.x = move_toward(velocity.x, 0, speed)
        velocity.z = move_toward(velocity.z, 0, speed)

    move_and_slide()
