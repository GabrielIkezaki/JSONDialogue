extends Control

var missionNumber : String = ""
var text : String = ""

var dialogueLines : Array
var currentInedx : int = 0


func start(dialogue_dictionary):
	"""
	This will basically take a dictionary of a conversation (stated in the DialogueAction script),
	and store its values into the dialogueLines array
	"""
	
	dialogue_dictionary = dialogueLines.values()