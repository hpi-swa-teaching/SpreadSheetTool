*SpreadSheetTool-Tests-private-event-generation
generateMouseMoveEventWithButton: aMouseButton startPosition: startPosition endPosition: endPosition
	
	^ MouseMoveEvent new
		setType: #mouseMove
		startPoint: startPosition
		endPoint: endPosition
		trail: nil
		buttons: aMouseButton
		hand: self hand
		stamp: Time millisecondClockValue