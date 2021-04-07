extends Item
class_name Spell
var mana_Cost = 10
var cooldown_cap = 30 #in game ticks
var cooldown = 0

func _init(v,n,mc,cd):
	super(0,v,n,true,false)
	self.mana_Cost = mc
	self.cooldown = 30
	pass

func _ready():
	super.Tag.append(SPELL)
	pass # Replace with function body.


func cast():
	if cooldown > 0:
		return false
	else:
		pass
	pass
func _physics_process(delta):
	if cooldown > 0:
		cooldown -= 1
	pass
