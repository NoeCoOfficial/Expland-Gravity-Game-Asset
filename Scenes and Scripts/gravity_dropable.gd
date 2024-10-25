extends CharacterBody3D





func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor() and Global.falling == false:
		velocity += get_gravity() * delta

	move_and_slide()


func _on_pressure_plate_body_entered(body: Node3D) -> void:
	if body.is_in_group("Player"):
		
		Global.falling = true
		self.position.y = 4.431


func _on_pressure_plate_body_exited(body: Node3D) -> void:
		Global.falling = false
