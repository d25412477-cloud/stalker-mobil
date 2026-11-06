
extends Button

var player: CharacterBody3D

func _ready():
    text = "ПРЫЖОК"
    size = Vector2(130, 75)
    pressed.connect(do_jump)

func do_jump():
    if player and player.is_on_floor():
        player.velocity.y = 5.0
