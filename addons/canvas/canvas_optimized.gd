extends "canvas.gd"

var max_lines = 10 

func capture_lines():
	get_viewport().set_clear_mode(Viewport.CLEAR_MODE_ONLY_NEXT_FRAME)
	yield(VisualServer, "frame_post_draw")

	var image = get_viewport().get_texture().get_data()
	image.flip_y()
	image = image.get_rect(get_global_rect())
		
	var tex = ImageTexture.new()
	tex.create_from_image(image)
	texture_normal = tex

	for index in range(get_child_count()):
		get_child(index).hide() # visible in Remote Scene Tree


func _on_CanvasOptimized_button_down():
	Input.set_use_accumulated_input(true)
	
	
func _on_CanvasOptimized_button_up():
	Input.set_use_accumulated_input(true)
	if current_line.points.size() < 2: 
		current_line.queue_free()
		
	if get_child_count() % max_lines == 0: # every 10 lines
		capture_lines()


