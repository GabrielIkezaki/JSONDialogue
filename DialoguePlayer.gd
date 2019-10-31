extends Control

var missionNumber : String = ""
var text : String = ""

var dialogueLines : Array
var currentInedx : int = 0

onready var textBox = $Panel/TextEdit
onready var missionBox = $Panel/missionText

func play_dialogue(dialogue_dictionary):
	"""
	This will basically take a dictionary of a conversation (stated in the DialogueAction script),
	and store its values into the dialogueLines array
	"""
	dialogueLines = dialogue_dictionary.values()
	textBox.text = dialogueLines[0].description
	missionBox.text = dialogueLines[0].missao
	
	print("playing")

"""
func _update():
	text = dialogueLines[currentInedx].text
"""