# Scratch Canvas ![icon](https://raw.githubusercontent.com/boukew99/scratch_canvas/main/addons/canvas/scratch_canvas.png)
Canvas for drawing in [Godot Engine](https://godotengine.org) with mouse, trackpad, touch and pen. Also inludes examples of optimization and use. Is used and tested in [Scratch Animator](https://github.com/boukew99/scratch_animator).

![loc](https://img.shields.io/tokei/lines/github/boukew99/scratch_canvas) ![size](https://img.shields.io/github/repo-size/boukew99/scratch_canvas) 

![screenshot](https://raw.githubusercontent.com/boukew99/scratch_canvas/main/screenshot/Screenshot%202022-04-22.png)

## Usage
* Instance it in your scene
* The Canvas is an extension of [TextureButton](https://docs.godotengine.org/en/stable/classes/class_texturebutton.html?highlight=textureButton) and uses [Line2D](https://docs.godotengine.org/en/stable/classes/class_line2d.html?highlight=line2d) for drawing. 
* The drawing line can be edited and some examples are given.
* The canvas with background can be adjusted with a different color.
* The optimized canvas captures the screen and uses that as the texture of the Canvas. Then the lines are freed, to decrease drawing cost.
* Note for less strenuous drawing with mouse and trackpad, you could enable toggle mode.

## License
[MIT](LICENSE)

## Aim
Have an adjustable canvas scene that you can just instance and use.
