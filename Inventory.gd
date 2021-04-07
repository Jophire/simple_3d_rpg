class_name Inventory

var size_x = 10
var size_y = 10
var max_size = 
var array = null



# Called when the node enters the scene tree for the first time.
func _ready(x,y,max_size):
	
	var array = x*[y*]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func add_inv(obj):
	if obj.getSize() + size < max_size:
		array.push(obj)
	else:
		return obj
	pass


func open_inventory(obj):
	pass
