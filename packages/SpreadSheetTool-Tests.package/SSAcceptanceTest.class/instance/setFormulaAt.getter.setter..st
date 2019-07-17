tools
setFormulaAt: aPoint getter: aGetter setter: aSetter

	| formulaButton |
	formulaButton := self findButtonAt: aPoint byLabel: 'formula'.
	self while: [formulaButton click] giveInterview: {
		'get*formula' -> aGetter.
		'set*formula' -> aSetter }.
	self fullWait.