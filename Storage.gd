extends Item
class_name Storage
var storage_type:Int ##0 Grid(minecraft style), 1 Weight(elderscrolls style), 2 Weighted Grid(Diablo style)
var size:Vector2
var max_weight:Int
var max_weight_item:Int

var stored_items:Dictionary
var current_weight:Int

func _init():
	super()
	pass
	
##Attempt to store a given item in given position.
func store_item(o:Item,l:Vector2):
	match storage_type:
		2:
			##needs work
		1:
			if o.weight < max_weight_item and o.weight+current_weight < max_weight:
				stored_items.append{o.get_instance_id ( ) : o}
			else
				return o,false
		0:
			##needs work
		-:
			error("Unknown storage type.")
	pass
	
func display(o:Int):
	pass
