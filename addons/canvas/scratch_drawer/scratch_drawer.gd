extends HBoxContainer

var clear_color = Color(0.298039, 0.298039, 0.298039) # default clear color

onready var canvas = $CanvasOptimized
onready var erase = $PanelContainer/VBoxContainer/Erase
onready var color_picker = $PanelContainer/VBoxContainer/ColorPickerButton


func _on_CanvasOptimized_drawing(line):
	line.default_color = clear_color if erase.pressed else color_picker.color


func _on_Line_pressed():
	canvas.line = preload("res://addons/canvas/line.tscn")


func _on_Rounded_pressed():
	canvas.line = preload("res://addons/canvas/line_rounded.tscn")


func _on_Thick_pressed():
	canvas.line = preload("res://addons/canvas/line_thick.tscn")


func _on_WidthCurve_pressed():
	canvas.line = preload("res://addons/canvas/line_width_curve.tscn")


func _on_Gradient_pressed():
	canvas.line = preload("res://addons/canvas/line_gradient.tscn")


func _on_Rainbow_pressed():
	canvas.line = preload("res://addons/canvas/line_rainbow.tscn")

