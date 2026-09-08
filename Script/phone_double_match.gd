extends Control
class_name BothRoute
@onready var bg_phone: Sprite2D = $bg_phone
@export var animation_player: AnimationPlayer
@export var anim_2: AnimationPlayer
@export var anim_3: AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#anim_3.play("box")
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func play_route() -> void:
	anim_3.play("box")

func _on_nix_button_mouse_entered() -> void:
	if animation_player.is_playing():
		animation_player.stop()
	print("nix")
	animation_player.play("nix")


func _on_nix_button_mouse_exited() -> void:
	if animation_player.is_playing():
		animation_player.stop()
	animation_player.play("nix out")
	

func _on_ion_button_mouse_entered() -> void:
	if anim_2.is_playing():
		anim_2.stop()
	anim_2.play("ion")


func _on_ion_button_mouse_exited() -> void:
	if anim_2.is_playing():
		anim_2.stop()
	anim_2.play("ion out")


func _on_ion_button_pressed() -> void:
	Dialogic.start("ionTimeline1")
	bg_phone.hide()


func _on_nix_button_pressed() -> void:
	Dialogic.start("nixTimeline1")
	bg_phone.hide()
