extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready():
	print(position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("forwards"):
		position.z -=0.1
	if Input.is_action_pressed("backwards"):
		position.z +=0.1
	if Input.is_action_pressed("left"):
		position.x -=0.1
	if Input.is_action_pressed("right"):
		position.x +=0.1
	if Input.is_action_pressed("up"):
		position.y +=0.1
	if Input.is_action_pressed("down"):
		position.y -=0.1
	if Input.is_action_pressed("rotate right"):
		rotate_z(+0.1)
	if Input.is_action_pressed("rotate left"):
		rotate_z(-0.1)

func _input(event):
	if event is InputEventMouseMotion:
		position.x -= event.relative.x*-0.01
		position.y -= event.relative.y* 0.01
		if position.x >= 5:
			position.x = 5
		if position.x <= -5:
			position.x = -5
		if position.y >= 5:
			position.y = 5
		if position.y <=-2.2:
			position.y = -2.2
		print (position)
