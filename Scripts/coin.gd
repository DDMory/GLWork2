extends Area3D

const rotation_speed := 5.0

func _ready() -> void:
	var start_pos := position.y
	var end_pos := position.y + 0.5
	var coin_tween := create_tween().set_loops().set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_SINE)
	coin_tween.tween_property(self, "position:y", end_pos, 1.0).from(start_pos)
	coin_tween.tween_property(self, "position:y", start_pos, 1.0).from(end_pos)

func _process(delta: float) -> void:
	rotate_y(deg_to_rad(rotation_speed * delta));


func _on_body_entered(body: Node3D) -> void:
	if body.name == "player":
		body.coletarMoeda()
		queue_free()
