# Scratch Canvas ![icon](scratch_canvas.png)
Canvas for drawing in [Godot Engine](https://godotengine.org) with mouse, trackpad, touch and pen.

## Usage
* Instance it in your scene
* The Canvas is an extension of [TextureButton](https://docs.godotengine.org/en/stable/classes/class_texturebutton.html?highlight=textureButton) and uses [Line2D](https://docs.godotengine.org/en/stable/classes/class_line2d.html?highlight=line2d) for drawing. 
* The drawing line can be edited.
* The optimized canvas captures the screen and uses that as the texture of the Canvas. Then the lines are hidden, to decrease drawing cost.

## License
[MIT](LICENSE)

## Aim
Have an adjustable canvas scene that you can just instance and use.
