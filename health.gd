
extends Node

signal health_changed(current_health)

@export var max_health: float = 100.0
var health: float = 100.0

func _ready():
    health = max_health

func take_damage(amount: float):
    health = maxf(health - amount, 0.0)
    health_changed.emit(health)

    if health <= 0:
        print("Игрок потерял сознание")

func heal(amount: float):
    health = minf(health + amount, max_health)
    health_changed.emit(health)
