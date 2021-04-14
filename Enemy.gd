extends KinematicBody
var last_hit

func _init():
	last_hit = 0
	pass
	
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	pass
	

func _on_damage_zone_damage_event(dmg):
	last_hit = dmg
	$ColorRect/Label2.text = str(last_hit)
