
extends Control

signal moved(direction: Vector2)

var active_touch := -1
var center := Vector2.ZERO
var direction := Vector2.ZERO
var radius := 65.0

func _ready():
    custom_minimum_size = Vector2(180, 180)

func _gui_input(event):
    if event is InputEventScreenTouch:
        if event.pressed and active_touch == -1:
            active_touch = event.index
            center = size / 2
            update_direction(event.position)
        elif not event.pressed and event.index == active_touch:
            active_touch = -1
            direction = Vector2.ZERO
            moved.emit(direction)
            queue_redraw()

    elif event is InputEventScreenDrag:
        if event.index == active_touch:
            update_direction(event.position)

func update_direction(position: Vector2):
    var offset = position - center
    direction = offset.limit_length(radius) / radius
    moved.emit(direction)
    queue_redraw()

func _draw():
    draw_circle(size / 2, radius, Color(0.3, 0.3, 0.3, 0.6))
    draw_circle(size / 2 + direction * radius, 28, Color(0.8, 0.8, 0.8, 0.8))
