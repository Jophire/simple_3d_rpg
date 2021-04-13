extends KinematicBody
var last_hit
var rng = RandomNumberGenerator.new()
func _init():
	last_hit = 0
	pass
	
# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	pass
	
func _on_player_damage_event(min_dmg, max_dmg):
	last_hit = rng.randf_range(min_dmg, max_dmg)
	print(str(last_hit))
	$ColorRect/Label2.text = str(last_hit)
	pass # Replace with function body.
