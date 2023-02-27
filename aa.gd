extends Node2D

onready var canvas = $ColorRect
onready var mat = canvas.material
#var lfo_toogle = false

func _ready():
	
	pass


func _on_rSlider_value_changed(value):
	mat.set_shader_param("pr",value/100)
	pass


func _on_gSlider_value_changed(value):
	mat.set_shader_param("pg",value/100)
	pass


func _on_bSlider_value_changed(value):
	mat.set_shader_param("pb",value/100)
	pass


func _on_LfoButton_toggled(button_pressed):
	mat.set_shader_param("use_lfo",button_pressed)
	pass

func _on_ampSlider_value_changed(value):
	mat.set_shader_param("pb",value/100)
	pass


func _on_rateSlider_value_changed(value):
	mat.set_shader_param("pw",value)
	pass


func _on_phaserSlider_value_changed(value):
	mat.set_shader_param("phaser",value)
	
