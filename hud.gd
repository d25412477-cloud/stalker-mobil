
extends CanvasLayer

var health_label: Label
var ammo_label: Label

func _ready():
    health_label = Label.new()
    health_label.text = "HP: 100"
    health_label.position = Vector2(30, 30)
    health_label.add_theme_font_size_override("font_size", 28)
    add_child(health_label)

    ammo_label = Label.new()
    ammo_label.text = "AMMO: 8 / 8"
    ammo_label.position = Vector2(30, 70)
    ammo_label.add_theme_font_size_override("font_size", 28)
    add_child(ammo_label)

func update_health(value: float):
    health_label.text = "HP: " + str(int(value))

func update_ammo(value: int):
    ammo_label.text = "AMMO: " + str(value)
