stepping
disableSteppingWhile: aBlock
	"If any error occurred, stepping is not re-enabled so the user is informed about the incident"

	| wasSteppingActivated result |
	wasSteppingActivated := self steppingActivated.
	self steppingActivated: false.
	result := aBlock value.
	self steppingActivated: wasSteppingActivated.
	^ result