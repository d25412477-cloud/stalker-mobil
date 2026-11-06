
extends CharacterBody3D

@export var speed: float = 5.0
@export var mouse_sensitivity: float = 0.002

var gravity: float = 9.8

func _ready():
    Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _input(event):
    if event is InputEventMouseMotion:
        rotate_y(-event.relative.x * mouse_sensitivity)

func _physics_process(delta):
    if not is_on_floor():
        velocity.y -= gravity * delta

    var input_dir = Input.get_vector(
        "move_left",
        "move_right",
        "move_forward",
        "move_back"
    )

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
