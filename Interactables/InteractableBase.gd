class_name Interactable
extends Node

@onready var texture: Sprite2D = $Texture
@onready var texture_hover_outline: Sprite2D = $TextureHoverOutline
@onready var particle: CPUParticles2D = $CPUParticles2D

@export var health := 50.0

var is_hovered := false


func _ready() -> void:
	texture_hover_outline.hide()

func _on_mouse_area_mouse_entered() -> void:
	texture_hover_outline.show()
	is_hovered = true


func _on_mouse_area_mouse_exited() -> void:
	texture_hover_outline.hide()
	is_hovered = false
	
