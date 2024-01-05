extends Camera2D

@export var zoom_in_limit := 3.0
@export var zoom_out_limit := 0.4
@export var zoom_speed := 10
@export var dragSen := 1.0

var zoom_level = .8
var pan_level := 600


func _input(event):
	if event.is_action_pressed('zoom_in', true):
		zoom_level += get_process_delta_time()*zoom_speed
	
	if event.is_action_pressed('zoom_out', true):
		zoom_level -= get_process_delta_time()*zoom_speed
		

	zoom = Vector2(zoom_level, zoom_level)
	zoom_level = clamp(zoom_level, zoom_out_limit, zoom_in_limit)

	if event is InputEventMouseMotion and Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
		
		# clamp pan position
		if(pan_level> position[0] - event.relative[0] * dragSen / zoom_level and position[0] - event.relative[0] * dragSen / zoom_level> -pan_level):
			position[0] -= event.relative[0] * dragSen / zoom_level
		if(pan_level > position[1] - event.relative[1] * dragSen / zoom_level and position[1] - event.relative[1] * dragSen / zoom_level> -pan_level):
			position[1] -= event.relative[1] * dragSen / zoom_level
			

