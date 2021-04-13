extends KinematicBody
signal damage_event(min_dmg,max_dmg)
var dmg_ub
var dmg_lb
func _init():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	dmg_ub = 1
	dmg_lb = 1
	pass
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	if Input.is_action_pressed("menu"):
		self.get_tree().quit()
	
	var move = false
	var dir_vec = Vector2.ZERO
	
	if Input.is_action_pressed("move_up"):
		dir_vec.x = -1
		move = true
	if Input.is_action_pressed("move_down"):
		dir_vec.x = 1
		move = true
	if Input.is_action_pressed("move_left"):
		dir_vec.y = -1
		move = true
	if Input.is_action_pressed("move_right"):
		dir_vec.y = 1
		move = true
	
	var sprinting = false
	if Input.is_action_pressed("sprint"):
		sprinting = true
	
	if dir_vec != Vector2.ZERO:
		rotation.y = dir_vec.angle()
	
	if move:
		$"Animated Human/AnimationTree"["parameters/state/current"] = 0
		if sprinting:
			$"Animated Human/AnimationTree"["parameters/state/current"] = 1
	else:
		$"Animated Human/AnimationTree"["parameters/state/current"] = 2
	

	if Input.is_action_just_pressed("punch"):
		dmg_lb =1
		dmg_ub =1
	elif Input.is_action_pressed("punch"):
		dmg_lb+=1
		dmg_ub+=2
	elif Input.is_action_just_released("punch"):
		$"Animated Human/AnimationTree"["parameters/punching/active"] = true
		$"Animated Human/Human Armature/Skeleton/BoneAttachment/damage_collider".set_monitoring(true)
	
	if $"Animated Human/AnimationTree"["parameters/punching/active"] == false:
		$"Animated Human/Human Armature/Skeleton/BoneAttachment/damage_collider".set_monitoring(false)
	
	var rmt = $"Animated Human/AnimationTree".get_root_motion_transform()
	var velocity = ((transform * rmt).origin - transform.origin) / delta
	
	velocity = global_transform.basis.z.normalized() * velocity.y
	velocity.y = 0
	
	self.move_and_slide(velocity, Vector3.UP)
	
func _on_damage_collider_body_entered(body):
	emit_signal("damage_event",dmg_lb,dmg_ub)
