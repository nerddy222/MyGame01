extends Node2D

var text =""
var ResultText = ""

func _ready():
	pass

func _on_Buttongame1_pressed():
	random_(1)
func _on_Buttongame2_pressed():
	random_(2)
func _on_Buttongame3_pressed():
	random_(3)

func random_(playerSelected):
	var Botrandom = randi()%3+1
	print(Botrandom)
	if(Botrandom == 1):
		text = get_node("grid/Text01")
		text.set_text("Hammer")
	elif(Botrandom == 2):
		text = get_node("grid/Text01")
		text.set_text("Scissor")
	elif(Botrandom == 3):
		text = get_node("grid/Text01")
		text.set_text("Paper")
	check_win(playerSelected,Botrandom)

func check_win(playerSelected,Botrandom):
	ResultText = get_node("grid/Result")
	if(playerSelected == 1 && Botrandom == 2):            
		ResultText.set_text("Player Win")
	elif(Botrandom == 1 && playerSelected == 2):
		ResultText.set_text("Bot Win")
	elif(Botrandom == 3 && playerSelected == 1):
		ResultText.set_text("Bot Win")
	elif(playerSelected == 3 && Botrandom == 1):
		ResultText.set_text("Player Win")
	elif(playerSelected == 2 && Botrandom == 3):
		ResultText.set_text("Player Win")
	elif(playerSelected == 3 && Botrandom == 2):
		ResultText.set_text("Bot Win")
	elif(playerSelected == Botrandom):
		ResultText.set_text("Draw")

            
func _process(delta):
	if(Input.is_key_pressed(KEY_SPACE)):
		get_tree().reload_current_scene()



