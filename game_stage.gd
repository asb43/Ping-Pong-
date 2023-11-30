extends Node2D

func _process(delta):
	$Label.text = str(Main.p1_score)
	$Label2.text = str(Main.p2_score)

func _on_top_wall_body_entered(body):
	body.direction.y *= -1


func _on_bottom_wall_body_entered(body):
	body.direction.y *= -1


func _on_left_wall_body_entered(body):
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(576,296)
	add_child(e)
	Main.p2_score += 1



func _on_right_wall_body_entered(body):
	body.queue_free()
	var e = preload("res://ball.tscn").instantiate()
	e.global_position = Vector2(576,296)
	add_child(e)
	Main.p1_score += 1

