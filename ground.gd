
extends StaticBody3D

func _ready():
    var mesh_instance = MeshInstance3D.new()
    var mesh = PlaneMesh.new()
    mesh.size = Vector2(200, 200)

    mesh_instance.mesh = mesh
    add_child(mesh_instance)

    var collision = CollisionShape3D.new()
    var shape = BoxShape3D.new()
    shape.size = Vector3(200, 0.2, 200)

    collision.shape = shape
    collision.position.y = -0.1
    add_child(collision)

    var material = StandardMaterial3D.new()
    material.albedo_color = Color(0.25, 0.29, 0.18)
    mesh_instance.material_override = material
