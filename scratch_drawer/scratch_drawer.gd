extends Panel

var saved_image

onready var background = $VBoxContainer/HBoxContainer/ScrollContainer/ColorRect
onready var canvas = $VBoxContainer/PanelContainer/HBoxContainer/PanelContainer2/ScrollContainer/ColorRect/Canvas
onready var undo = $VBoxContainer/PanelContainer/HBoxContainer/Undo
onready var redo = $VBoxContainer/PanelContainer/HBoxContainer/Redo
onready var perpendicular_distance_label = $VBoxContainer/PanelContainer/HBoxContainer/HBoxContainer/Label
onready var width = $VBoxContainer/HBoxContainer/VBoxContainer/PanelContainer2/VBoxContainer/Width

func _ready():
	#canvas.time.connect("version_changed", self, "_on_Canvas_version_changed")
	$VBoxContainer/PanelContainer/HBoxContainer/VBoxContainer/Line.group.connect("pressed", self, "line_pressed")
	
func line_pressed(button):
	canvas.current_layer = button.get_index()

func _on_ColorPickerButton_color_changed(color):
	canvas.layers[canvas.current_layer].modulate = color

func _on_Undo_pressed():
	canvas.layers[canvas.current_layer].undo_redo.undo()


func _on_Redo_pressed():
	canvas.layers[canvas.current_layer].undo_redo.redo()

func _on_Clear_pressed():
	canvas.clear()

func _on_Canvas_version_changed():
	undo.disabled = not canvas.time.has_undo()
	redo.disabled = not canvas.time.has_redo()
	

func _on_Export_pressed():
	canvas.capture_lines("export/screenshot.png")


func _on_Capture_pressed():
	canvas.capture_lines()


func _on_ToggleMode_toggled(button_pressed):
	canvas.toggle_mode = button_pressed


