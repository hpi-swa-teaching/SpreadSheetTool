tools
activateButton: aButton during: aBlock

	| result state |
	state := aButton isOn.
	aButton assureOn.
	[result := aBlock value]
		ensure: [aButton assureOn: state].
	^ result