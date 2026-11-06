
extends Area3D

@export var item_name: String = "Артефакт"
var player_nearby := false

func _ready():
    body_entered.connect(_on_body_entered)
    body_exited.connect(_on_body_exited)

func _on_body_entered(body):
    if body is CharacterBody3D:
        player_nearby = true
        print("Нажмите E, чтобы подобрать: ", item_name)

func _on_body_exited(body):
    if body is CharacterBody3D:
        player_nearby = false

func collect():
    if player_nearby:
        print("Подобран предмет: ", item_name)
        queue_free()
