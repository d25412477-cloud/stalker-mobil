
extends Node3D

func _ready():
    create_ground()
    create_buildings()
    create_trees()

func create_ground():
    var ground = StaticBody3D.new()
    ground.name = "Ground"

    var mesh_instance = MeshInstance3D.new()
    var mesh = PlaneMesh.new()
    mesh.size = Vector2(200, 200)
    mesh_instance.mesh = mesh

    var material = StandardMaterial3D.new()
    material.albedo_color = Color(0.25, 0.29, 0.18)
    mesh_instance.material_override = material
    ground.add_child(mesh_instance)

    var collision = CollisionShape3D.new()
    var shape = BoxShape3D.new()
    shape.size = Vector3(200, 0.2, 200)
    collision.shape = shape
    collision.position.y = -0.1
    ground.add_child(collision)

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
        mesh.height = 5
        tree.mesh = mesh
        tree.position = Vector3(i * 5 - 30, 1.5, 15)
        add_child(tree)
