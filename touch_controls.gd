
extends CanvasLayer

var move_vector := Vector2.ZERO
var player: CharacterBody3D

func _ready():
    create_buttons()

func create_buttons():
    var left = Button.new()
    left.text = "◀"
    left.position = Vector2(30, 400)
    left.size = Vector2(90, 90)
    left.button_down.connect(func():
        move_vector.x = -1
    )
    left.button_up.connect(func():
        move_vector.x = 0
    )
    add_child(left)

    var right = Button.new()
    right.text = "▶"
    right.position = Vector2(210, 400)
    right.size = Vector2(90, 90)
    right.button_down.connect(func():
        move_vector.x = 1
    )
    right.button_up.connect(func():
        move_vector.x = 0
    )
    add_child(right)

    var forward = Button.new()
    forward.text = "▲"
    forward.position = Vector2(120, 310)
    forward.size = Vector2(90, 90)
    forward.button_down.connect(func():
        move_vector.y = -1
    )
    forward.button_up.connect(func():
        move_vector.y = 0
    )
    add_child(forward)
