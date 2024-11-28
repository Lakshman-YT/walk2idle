extends CharacterBody3D
const SPEED = 3.0
var movement = -1.0
var tween = false

func _physics_process(delta: float) -> void:
	var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if input_dir.length() > 0:
		movement = lerp(movement , 0.0 , 3 * delta)
		if tween:
			tween.kill()
			tween = 0
		$AnimationTree.set("parameters/BlendSpace1D/blend_position" , movement)
	else:
		if not tween:
			tween = create_tween().bind_node(self)
			var t = movement + 1
			tween.tween_property(self, "movement" , -1, t).set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_QUINT)	
		$AnimationTree.set("parameters/BlendSpace1D/blend_position" , movement)
	velocity = SPEED * $AnimationTree.get_root_motion_position() / delta
	move_and_slide()
