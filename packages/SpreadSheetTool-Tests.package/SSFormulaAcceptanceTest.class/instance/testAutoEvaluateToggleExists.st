testing-automatic evaluation
testAutoEvaluateToggleExists

	| toggle |
	toggle := self subject findByClass: PluggableCheckBoxMorph andName: 'auto evaluate'.
	self assert: toggle isUnique.
	self assert: toggle isChecked.