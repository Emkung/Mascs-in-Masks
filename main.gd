extends Node2D
@onready var bg_phone: Sprite2D = $bg_phone


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_nix_pressed() -> void:
	Dialogic.start("nixTimeline1")
	bg_phone.hide()
	


func _on_ion_pressed() -> void:
	Dialogic.start("ionTimeline1")
	bg_phone.hide()
