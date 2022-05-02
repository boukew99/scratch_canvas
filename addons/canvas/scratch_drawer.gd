extends Panel

onready var clear_color = $VBoxContainer/PanelContainer/ColorRect.color
onready var canvas = $VBoxContainer/PanelContainer/ColorRect/CanvasOptimized
onready var erase = $VBoxContainer/HBoxContainer/Erase
onready var color_picker = $VBoxContainer/HBoxContainer/ColorPickerButton

var lines = [
	preload("res://addons/canvas/line.tscn"),
	preload("res://addons/canvas/line_gradient.tscn"),
	preload("res://addons/canvas/line_rounded.tscn"),
	preload("res://addons/canvas/line_thick.tscn"),
	preload("res://addons/canvas/line_width_curve.tscn"),
]


func _on_LineOptionButton_item_selected(index):
	canvas.line = lines[index]

func _on_CanvasOptimized_drawing(line):
	line.default_color = clear_color if erase.pressed else color_picker.color




