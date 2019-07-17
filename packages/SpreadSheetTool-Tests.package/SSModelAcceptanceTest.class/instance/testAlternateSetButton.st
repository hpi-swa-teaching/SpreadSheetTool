testing
testAlternateSetButton

	| getButton setButton |
	setButton := self findSetFormulaButtonAt: self someCellIndex.
	getButton := self findGetFormulaButtonAt: self someCellIndex.
	setButton click.
	getButton click.
	
	self assert: setButton isOff.
	self assert: getButton isOn.
