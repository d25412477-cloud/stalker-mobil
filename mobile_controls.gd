
extends CanvasLayer

func _ready():
    var button = Button.new()
    button.text = "ОГОНЬ"
    button.position = Vector2(850, 500)
    button.size = Vector2(150, 100)

    button.pressed.connect(shoot)
    add_child(button)

func shoot():
    print("Выстрел!")
