testing
testAutoEvaluateToggleExists

	| toggle |
	toggle := self findAutoEvaluateToggle.
	self assert: toggle isUnique.
	self assert: toggle isChecked.