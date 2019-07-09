initialize-release
initialize

	super initialize.
	World startStepping: self at: Time millisecondClockValue selector: #stepAt: arguments: #() stepTime: 1000.