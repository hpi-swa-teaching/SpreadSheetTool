interaction
formulaSelection: aSymbol
	
	aSymbol = formulaSelection ifTrue: [^ self].
	self okToSwitchSelection ifFalse: [^ self].
	formulaSelection := aSymbol.
	self
		changed: #isGetterIndicated;
		changed: #isSetterIndicated;
		changed: #buildWidget.