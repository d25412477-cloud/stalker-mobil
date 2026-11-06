
extends Node

func _ready():
    add_action("move_forward", KEY_W)
    add_action("move_back", KEY_S)
    add_action("move_left", KEY_A)
    add_action("move_right", KEY_D)

func add_action(action_name: String, key: Key):
    if not InputMap.has_action(action_name):
        InputMap.add_action(action_name)

    var event = InputEventKey.new()
    event.physical_keycode = key
    InputMap.action_add_event(action_name, event)
