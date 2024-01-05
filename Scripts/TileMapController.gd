@tool
extends TileMap

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
			var global_clicked = event.position
			var pos_clicked = local_to_map(to_local(global_clicked))
			print(pos_clicked)
			

func _init():
	var coords = [[-2,-3], [-1,-3], [0,-3],
			  [-2,-2], [-1,-2], [0,-2], [1,-2],
		   [-3,-1], [-2,-1], [-1,-1], [0,-1], [1,-1],
				[-2, 0], [-1, 0], [0, 0], [1, 0],
					[-2, 1], [-1, 1], [0, 1]]
	var tiles = [1,1,1,2,2,2,2,3,3,3,3,4,4,4,5,5,5,5,6]
	tiles.shuffle()
	
	for i in range(0,19):
		if(tiles[i]==1): #ore
			set_cell(0,Vector2(coords[i][0], coords[i][1]),0,Vector2(2,0))
		if(tiles[i]==2): #wheat
			set_cell(0,Vector2(coords[i][0], coords[i][1]),0,Vector2(1,0))
		if(tiles[i]==3): #sheep
			set_cell(0,Vector2(coords[i][0], coords[i][1]),0,Vector2(0,0))
		if(tiles[i]==4): #brick
			set_cell(0,Vector2(coords[i][0], coords[i][1]),0,Vector2(2,1))
		if(tiles[i]==5): #wood
			set_cell(0,Vector2(coords[i][0], coords[i][1]),0,Vector2(1,1))
		if(tiles[i]==6): #desert
			set_cell(0,Vector2(coords[i][0], coords[i][1]),0,Vector2(0,1))

		
