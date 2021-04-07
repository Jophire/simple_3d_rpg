class_name Item
enum Tag {DEBUG}

var weight = 0
var value = 0
var name = "Default Item"
var can_drop = true
var can_sell = true

var tags = [Tag.DEBUG]

var sell_values = {
	purc_value=1.0f, 	##The upper limit npcs will sells item for.
	sell_value=1.0f, 	##The upper limit npcs will pay for an item.
	desireability=1 	## 0 - 1 how much do people want this.
	}



func _init():
	self.weight = 0
	self.value = 1
	self.name = "Copper Piece"
	self.can_drop = true
	self.can_sell = true
	pass # Replace with function body.

func _init(w,v,n,cd,cs):
	self.weight = w
	self.value = v
	self.name = n
	self.can_drop = cd
	self.can_sell = cs
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
