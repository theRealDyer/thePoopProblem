extends CharacterBody2D
class_name enemy_movement

var current_states = enemy_states.MOVELEFT
enum enemy_states {MOVERIGHT, MOVELEFT}

@export var speed = 10
var dir

func _physics_process(delta):
	
	match current_states:
		enemy_states.MOVERIGHT:
			move_right()
		enemy_states.MOVELEFT:
			move_left()
	
	move_and_slide()

func random_generation():
	dir = randi() % 2
	print(dir)
	random_direction()
	
func random_direction():
	match dir:
		0:
			current_states = enemy_states.MOVERIGHT
		1:
			current_states = enemy_states.MOVELEFT
			
func move_right():
	velocity = Vector2.RIGHT * speed
	$anim.play("move_right")
	
func move_left():
	velocity = Vector2.LEFT * speed
	$anim.play("move_left")

