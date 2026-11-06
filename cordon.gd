
extends Node3D

func _ready():
    create_ground()
    create_buildings()
    create_trees()
    print("Локация Кордон загружена!")

func create_ground():
    var ground = MeshInstance3D.new()
    var mesh = PlaneMesh.new()
    mesh.size = Vector2(100, 100)
    ground.mesh = mesh

    var material = StandardMaterial3D.new()
    material.albedo_color = Color(0.24, 0.29, 0.19)
    ground.material_override = material

    ground.position.y = -1
    add_child(ground)

func create_buildings():
    for i in range(5):
        var building = MeshInstance3D.new()
        var mesh = BoxMesh.new()

        mesh.size = Vector3(8, 5, 7)
        building.mesh = mesh
        building.position = Vector3(i * 15 - 30, 1.5, -15)

        var material = StandardMaterial3D.new()
        material.albedo_color = Color(0.3, 0.28, 0.23)
        building.material_override = material

        add_child(building)

func create_trees():
    for i in range(12):
        var tree = MeshInstance3D.new()
        var mesh = CylinderMesh.new()

        mesh.top_radius = 0.15
        mesh.bottom_radius = 0.35
        mesh.height = 5

        tree.mesh = mesh
        tree.position = Vector3(i * 5 - 30, 1.5, 15)

        var material = StandardMaterial3D.new()
        material.albedo_color = Color(0.2, 0.16, 0.1)
        tree.material_override = material

        add_child(tree)
