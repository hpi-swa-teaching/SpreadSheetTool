*SpreadSheetTool-Tests-private-event-generation
generateMouseEnterEventAtPosition: aPosition

	^ MouseEvent new
		setType: #mouseEnter
		position: aPosition
		buttons: 0
		hand: self hand