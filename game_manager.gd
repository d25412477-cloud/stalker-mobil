
extends Node

@export var player: CharacterBody3D
@export var joystick: Control

func _ready():
    if joystick and player:
        joystick.moved.connect(player.set_mobile_direction)
