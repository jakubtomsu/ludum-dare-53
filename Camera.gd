extends Camera2D

var shake_strength = 0.0
var time = 0.0
var noise = OpenSimplexNoise.new()

func _ready():
	Global.cam = self
	noise.seed = randi()
	noise.octaves = 4
	noise.period = 20
	noise.persistence = 0.8
	
func _process(delta):
	time += delta
	shake_strength = clamp(shake_strength - delta * 4.0, 0.0, 3.0)
	offset_h = noise.get_noise_1d(time * 100.0) * shake_strength
	offset_v = noise.get_noise_1d(-time * 100.0) * shake_strength
	rotation = noise.get_noise_1d(time * 100.0 + 10121.0) * shake_strength * 0.25
	var player_offs = (Global.player.global_position - global_position) * 0.015
	offset_h += player_offs.x
	offset_v += player_offs.y
	# offset_v = noise.get_noise_1d(-987.0 - time * 3.0) * 0.5
