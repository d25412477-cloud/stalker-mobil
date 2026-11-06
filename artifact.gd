
extends MeshInstance3D

@export var artifact_name: String = "Медуза"

func _ready():
    var mesh = SphereMesh.new()
    mesh.radius = 0.35
    mesh.height = 0.7
    self.mesh = mesh

    var material = StandardMaterial3D.new()
    material.albedo_color = Color(0.2, 0.8, 1.0)
    material.emission_enabled = true
    material.emission = Color(0.1, 0.5, 1.0)
    material.emission_energy_multiplier = 2.0

    material_override = material

    print("Артефакт появился: ", artifact_name)
