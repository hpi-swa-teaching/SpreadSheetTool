stepping
startStepping
	
	World
		startStepping: self
		at: Time millisecondClockValue
		selector: #stepModelAt:
		arguments: #()
		stepTime: nil.