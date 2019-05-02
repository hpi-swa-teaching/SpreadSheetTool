*SpreadSheetTool-Tests-private-event-generation
generateMouseEvent: aSymbol button: aMouseButton modifiers: modifiersValue position: aPosition
	"aSymbol can be: #mouseMove, #mouseUp, #mouseDown"
	
	^MouseButtonEvent new
		setType: aSymbol
		position: aPosition
		which: 0
		buttons: aMouseButton + modifiersValue
		hand: self hand
		stamp: Time millisecondClockValue