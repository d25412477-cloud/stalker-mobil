
extends Node

@export var jump_power: float = 5.0

func jump(player: CharacterBody3D):
    if player.is_on_floor():
        player.velocity.y = jump_power
