extends Node2D
@onready var bg_phone: Sprite2D = $bg_phone
@export var ion_button: TextureButton
@export var animation_player: AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation_player.play("box")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_nix_pressed() -> void:
	Dialogic.start("nixTimeline1")
	bg_phone.hide()
	


func _on_ion_pressed() -> void:
	Dialogic.start("ionTimeline1")
	bg_phone.hide()


func _on_nix_mouse_entered() -> void:
	if not animation_player.is_playing():
		animation_player.play("nix")
	
	


func _on_nix_mouse_exited() -> void:
	if not animation_player.is_playing():
		animation_player.play("nix out")
	


func _on_ion_mouse_entered() -> void:
	if not animation_player.is_playing():
		animation_player.play("ion")


func _on_ion_mouse_exited() -> void:
	if not animation_player.is_playing():
		animation_player.play("ion out")
