extends Sprite2D

var x = 1

@export var speed = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#print('im ready')
	var is_pos_over_800 = position.x
	
	if is_pos_over_800:
		print('my position is over 800')
	else:
		print('my positiomn is ', position.x)








# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		position.y -= speed
	if Input.is_action_pressed("ui_down"):
		position.y += speed
	if Input.is_action_pressed("ui_left"):
		position.x -= speed
	if Input.is_action_pressed("ui_right"):
		position.x += speed
		#print('i pressed a button')
	
	
	#position.x = position.x + speed
	#if position.x > 800:
		#print ('I WIN')
	
	#else:
		#print ('still racing')
	

	pass
