extends TextureButton 

signal drawing()
onready var layers = get_children()
var current_layer = 0
var time = UndoRedo.new()
		
func _on_Canvas_gui_input(event):
	if event is InputEventMouseMotion and event.relative and pressed:
		layers[current_layer].current_line.add_point_sparsely(event.position)
#		update()
		
func _on_Canvas_button_down():
	Input.set_use_accumulated_input(false)
	
	layers[current_layer].add_line()
	
	emit_signal("drawing")

#func _draw():
#	if current_line and current_line.points:
#		for point in current_line.points:
#			draw_circle(point, 4, Color.red)


func _on_Canvas_button_up():
	Input.set_use_accumulated_input(true)




