testing
testAlternateSetterButton
	"Acceptance test for #65 (Unify different formula approaches)"

	| getButton setButton |
	getButton := self findGetFormulaButtonAt: self someCellIndex.
	setButton := self findSetFormulaButtonAt: self someCellIndex.
	setButton click.
	getButton click.
	self assert: getButton isOn.
	self assert: setButton isOff.