
var red_tank_template = preload('res://units/tank_red.xscn')
var blue_tank_template = preload('res://units/tank_blue.xscn')
var red_soldier_template = preload('res://units/soldier_red.xscn')
var blue_soldier_template = preload('res://units/soldier_blue.xscn')
var red_helicopter_template = preload('res://units/helicopter_red.xscn')
var blue_helicopter_template = preload('res://units/helicopter_blue.xscn')
var red_rocketeer_template = preload('res://units/rocketeer_red.xscn')
var blue_rocketeer_template = preload('res://units/rocketeer_blue.xscn')
var red_medic_template = preload('res://units/medic_red.xscn')
var blue_medic_template = preload('res://units/medic_blue.xscn')

var player_blue = 0
var player_red = 1

func build_unit(type, player):
	if type == 0:
		return self.build_soldier(player)
	if type == 1:
		return self.build_tank(player)
	if type == 2:
		return self.build_helicopter(player)
	if type == 3:
		return self.build_rocketeer(player)
	if type == 4:
		return self.build_medic(player)
	return null
	
func build_rocketeer(player):
	if(player == player_blue):
		return blue_rocketeer_template.instance()
	if(player == player_red):
		return red_rocketeer_template.instance()
		
func build_medic(player):
	if(player == player_blue):
		return blue_medic_template.instance()
	if(player == player_red):
		return red_medic_template.instance()

func build_tank(player):
	if (player == player_blue):
		return blue_tank_template.instance()
	if (player == player_red):
		return red_tank_template.instance()
		
func build_soldier(player):
	if (player == player_blue):
		return blue_soldier_template.instance()
	if (player == player_red):
		return red_soldier_template.instance()

func build_helicopter(player):
	if (player == player_blue):
		return blue_helicopter_template.instance()
	if (player == player_red):
		return red_helicopter_template.instance()
