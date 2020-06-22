tool
extends Node2D

enum DIRECTION {
	Down,
	Left,
	Right,
	Up
}

export (String) var imageFile setget set_imageFile, get_imageFile
export (DIRECTION) var direction setget set_direction, get_direction

var _imageFile:String
var _direction = DIRECTION.Up

func set_imageFile(value):
	self._imageFile = value
	$Sprite.texture = load(value)
	_update_sprite()

func get_imageFile():
	return self._imageFile

func set_direction(value):
	_direction = value
	_update_sprite()

func get_direction():
	return _direction

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _update_sprite():	
	$Sprite.region_enabled = true
	$Sprite.region_rect = Rect2(64, _direction * 64, 64, 64)
