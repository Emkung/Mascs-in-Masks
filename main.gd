extends Node2D
@onready var bg_phone: Sprite2D = $bg_phone
@export var nix_button: TextureButton 
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
	animation_player.play("nix")
	
	


func _on_nix_mouse_exited() -> void:
	#nix_button.z_index = 0
	#nix_button.scale = Vector2(0.85,0.85)
	animation_player.play("nix out")
	


func _on_ion_mouse_entered() -> void:
	ion_button.z_index = 1
	ion_button.scale = Vector2(0.9,0.9)


func _on_ion_mouse_exited() -> void:
	ion_button.z_index = 0
	ion_button.scale = Vector2(0.85,0.85)
