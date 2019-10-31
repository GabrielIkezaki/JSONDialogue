extends Node
class_name DialogueAction


#In this line, we are exporting a variable, which will be used as the path for the JSON file inside our project
export (String, FILE, "*.json*") var dialogue_file_path : String = ("res://dialogue/data/data.json")

onready var dialogo = get_node("/root/Interface/DialoguePlayer")


func _process(delta):
	interact()

#This will play whenever the player triggers the dialogue
func interact()->void:
	
	#This variable will basically store the dialogue in a dictionary. The function load_dialogue will interpret the JSON file as a dictionary
	var dialogue : Dictionary = load_dialogue(dialogue_file_path)
	
	#rint(dialogue["001"])
	
	#This line plays the dialogue, and it will wait until the dialogue is complete
	dialogo.play_dialogue(dialogue)
	#Once the played dialogue is completed, a signal (signalizing that the dialogue is finished) will be emitted 
	emit_signal("finished")
	pass

#Load_dialogue will return a dictionary. This dictionary will store the JSON file content
func load_dialogue(file_path) -> Dictionary:
	
	#We are now creating a new file, which will represent the JSON file
	var file = File.new()
	#In this line, we will be checking if the JSON file exists in the path specified on the first line of this script, which will be represented by the load_dialogue function parameter, file_path 
	assert file.file_exists(file_path)
	#If the file really does exist, it will be opened and stored into the user device's file system 
	file.open(file_path, file.READ)
	
	#The dialogue variable will return the file variable (the JSON file) as a string
	var dialogue = parse_json(file.get_as_text())
	
	#This assures that the dialogue is not empty 
	assert dialogue.size()>0
	
	#And finally, the dialogue, converted from JSON to string, will be returned intothe Dictionary
	return dialogue