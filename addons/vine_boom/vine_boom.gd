@tool
extends EditorPlugin

const DOCK_NAME = "Vine Boom"
var dock

func _enter_tree():
	# Load and instantiate the dock scene
	dock = preload("res://addons/vine_boom/vine_boom_dock.tscn").instantiate()
	# Add it to the editor (you can change DOCK_SLOT_LEFT_UR to other positions)
	add_control_to_dock(DOCK_SLOT_LEFT_UR, dock)

func _exit_tree():
	# Clean up when disabling the plugin
	remove_control_from_docks(dock)
	if dock:
		dock.queue_free()
