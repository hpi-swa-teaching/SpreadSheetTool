*SpreadSheetTool-Tests-interacting
generateKeyboardEvent: aType with: aKey buttons: anInteger on: aMorph
	"aType can be #keyDown, #keyUp, #keystroke"
	
	^KeyboardEvent new
		setType: aType
		buttons: anInteger
		position: aMorph center
		keyValue: aKey
		hand: self hand
		stamp: Time millisecondClockValue