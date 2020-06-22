tool
extends Node2D

enum DIRECTION {
	Down,
	Left,
	Right,
	Up
}

export (String) var image_file setget set_image_file, get_image_file
export (DIRECTION) var direction setget set_direction, get_direction
export (int) var item1_id
export (int) var item2_id
export (String, "Gold  Sword", "Gold Armour") var fake_item

var _image_file:String
var _direction = DIRECTION.Up

const ALL_ITEMS = ["Nothing", "Honeydew Potion", "Wooden Armour", "Iron Sword"]

func set_image_file(value):
	self._image_file = value
	$Sprite.texture = load(value)
	_update_sprite()

func get_image_file():
	return self._image_file

func set_direction(value):
	_direction = value
	_update_sprite()

func get_direction():
	return _direction

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.visible = false
	$Label.text = ALL_ITEMS[item1_id] + "\n" + ALL_ITEMS[item2_id]
	self._update_sprite()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _update_sprite():
	$Sprite.region_enabled = true
	$Sprite.region_rect = Rect2(64, _direction * 64, 64, 64)

func _on_Area2D_mouse_entered():
	$Label.visible = true

func _on_Area2D_mouse_exited():
	$Label.visible = false
