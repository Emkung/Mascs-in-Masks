extends Control

var times_pressed: int = 0
var ion_like: int = 0
var nix_like: int = 0
@onready var ion: TextureButton = $bg_phone/Sprite2D/Ion
@export var sadEnding: Control
@export var bothRoute: BothRoute
@export var nixRoute: Control
@export var ionRoute: Control
@export var anim: AnimationPlayer
@export var anim2: AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_dislike_mouse_entered() -> void:
	anim2.play("dislike_hover")


func _on_dislike_mouse_exited() -> void:
	anim2.play("dislike_unhover")


func _on_dislike_pressed() -> void:
	times_pressed+=1
	if times_pressed == 1:
		ion.hide()
	if times_pressed == 2:
		if ion_like == nix_like:
			self.hide()
			Dialogic.start("AloneTimeline")
		elif nix_like > ion_like:
			self.hide()
			nixRoute.show()
			nixRoute.play_animation()
		else: 
			self.hide()
			ionRoute.show()
			ionRoute.play_animation()


func _on_like_mouse_exited() -> void:
	anim.play("like_unhover")


func _on_like_mouse_entered() -> void:
	anim.play("like hover")


func _on_like_pressed() -> void:
	times_pressed+=1
	if times_pressed == 1:
		ion_like += 1
		ion.hide()
	if times_pressed == 2:
		nix_like += 1
		if ion_like == nix_like:
			self.hide()
			bothRoute.show()
			bothRoute.play_route()
			
		elif nix_like > ion_like:
			self.hide()
			nixRoute.show()
			nixRoute.play_animation()
		else: 
			self.hide()
			ionRoute.show()
			ionRoute.play_animation()
