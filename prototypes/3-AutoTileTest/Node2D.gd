extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const TILE_SIZE = 32

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _unhandled_input(event):
	if (event is InputEventMouseButton):
		var mouse_data = event as InputEventMouseButton
		if mouse_data.pressed:
			var mouse_x = int(floor(mouse_data.position.x / TILE_SIZE))
			var mouse_y = int(floor(mouse_data.position.y / TILE_SIZE))
			print("Clicked on " + str(mouse_x) + ", " + str(mouse_y))
			$FogTileMap.set_cell(mouse_x, mouse_y, -1)
			$FogTileMap.update_bitmask_region(Vector2(0, 0), Vector2(999, 999))
