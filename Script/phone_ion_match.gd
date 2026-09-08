extends Control
@onready var bg_phone: Sprite2D = $bg_phone
@export var animation_player: AnimationPlayer
@export var anim_2: AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#animation_player.play("box")
	#anim_2.play("ion")
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func play_animation() -> void:
	animation_player.play("box")
	anim_2.play("ion")
	
	
func _on_ion_button_pressed() -> void:
	anim_2.play("ion out")
	await anim_2.animation_finished
	Dialogic.start("ionTimeline1")
	bg_phone.hide()
