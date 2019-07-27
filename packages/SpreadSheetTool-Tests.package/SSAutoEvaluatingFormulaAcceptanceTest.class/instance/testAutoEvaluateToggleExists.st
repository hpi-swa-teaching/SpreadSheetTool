testing
testAutoEvaluateToggleExists
	"Acceptance test for #48 (Automatic formula evaluation)"
	
	| toggle |
	toggle := self findAutoEvaluateToggle.
	self assert: toggle isUnique.
	self assert: toggle isOn.