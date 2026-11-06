
extends Node3D

@export var weapon_name: String = "PM"
@export var damage: float = 20.0
@export var ammo: int = 8
@export var max_ammo: int = 8

func shoot():
    if ammo <= 0:
        print("Нет патронов!")
        return

    ammo -= 1
    print("Выстрел! Осталось патронов: ", ammo)

func reload():
    ammo = max_ammo
    print("Оружие перезаряжено")

func get_ammo():
    return ammo
