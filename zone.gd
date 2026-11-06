
extends Node3D

func _ready():
    create_environment()
    print("Добро пожаловать в Зону!")

func create_environment():
    var world = WorldEnvironment.new()
    var environment = Environment.new()

    environment.background_mode = Environment.BG_SKY
    environment.ambient_light_source = Environment.AMBIENT_SOURCE_COLOR
    environment.ambient_light_color = Color(0.45, 0.5, 0.42)
    environment.ambient_light_energy = 0.5

    world.environment = environment
    add_child(world)
