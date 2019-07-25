interaction
setFormulaSelection: aSymbol
	
	aSymbol = formulaSelection ifTrue: [^ true].
	self okToSwitchSelection ifFalse: [^ false].
	formulaSelection := aSymbol.
	^ true