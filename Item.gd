class_name Item
enum Tag {DEBUG}

var weight:Float
var value:Int
var name:String
var can_drop:Bool
var can_sell:Bool

var tags:Array

func _init():
	self.weight = 0
	self.value = 1
	self.name = "Copper Piece"
	self.can_drop = true
	self.can_sell = true
	self.tags=[Tag.DEBUG]
	pass # Replace with function body.

func _init(w,v,n,cd,cs):
	self.weight = w
	self.value = v
	self.name = n
	self.can_drop = cd
	self.can_sell = cs
	self.tags=[Tag.DEBUG]
	pass # Replace with function body.
