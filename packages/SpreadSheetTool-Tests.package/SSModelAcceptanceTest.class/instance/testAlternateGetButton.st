testing
testAlternateGetButton

	| getButton setButton |
	getButton := self findGetFormulaButtonAt: self someCellIndex.
	setButton := self findSetFormulaButtonAt: self someCellIndex.
	getButton click.
	setButton click.
	
	self assert: getButton isOff.
	self assert: setButton isOn.
