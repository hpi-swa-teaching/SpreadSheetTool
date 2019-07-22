as yet unclassified
disableSteppingWhile: aBlock

	| wasSteppingActivated result |
	wasSteppingActivated := self steppingActivated.
	self steppingActivated: false.
	result := aBlock value.
	self steppingActivated: wasSteppingActivated.
	^ result