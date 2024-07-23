extends enemy_movement

func _ready():
	random_generation()
	
func _on_timer_timeout():
	random_generation()
	$Timer.start()
		
