
extends Node3D

@export var sensitivity: float = 0.004

var camera: Camera3D
var look_touch := -1
var last_position := Vector2.ZERO

func _ready():
    camera = get_node_or_null("Camera3D")

func _input(event):
    if event is InputEventScreenTouch:
        if event.pressed and event.position.x > get_viewport().size.x * 0.4:
            look_touch = event.index
            last_position = event.position
        elif not event.pressed and event.index == look_touch:
            look_touch = -1

    elif event is InputEventScreenDrag:
        if event.index == look_touch:
            var delta = event.position - last_position
            rotate_y(-delta.x * sensitivity)

            if camera:
                camera.rotate_x(-delta.y * sensitivity)
                camera.rotation.x = clamp(
                    camera.rotation.x, -1.4, 1.4
                )

            last_position = event.position
