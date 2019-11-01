extends Control

var missionNumber : String = ""
var text : String = ""

var dialogueLines : Array
var currentInedx : int = 0
var index = 0

onready var textBox = $Panel/TextEdit
onready var missionBox = $Panel/missionText

func play_dialogue(dialogue_dictionary):
	"""
	This will basically take a dictionary of a conversation (stated in the DialogueAction script),
	and store its values into the dialogueLines array
	"""
	dialogueLines = dialogue_dictionary.values()
	
	textBox.text = dialogueLines[index].description
	missionBox.text = dialogueLines[index].missao
	
	print("playing")

"""
func _update():
	text = dialogueLines[currentInedx].text
"""

func _on_Button_pressed():
	index = 0
	pass # Replace with function body.


func _on_Mission2_Button_pressed():
	index = 1
	pass # Replace with function body.


func _on_Mission3_Button_pressed():
	index = 2
	pass # Replace with function body.
