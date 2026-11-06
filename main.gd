
extends Node3D

func _ready():
    var player = get_node("Player")
    var joystick = get_node("HUD/Joystick")

    joystick.connect(
        "moved",
        Callable(player, "set_mobile_direction")
    )

    print("S.T.A.L.K.E.R. Mobile запущен!")
    print("Управление подключено!")
