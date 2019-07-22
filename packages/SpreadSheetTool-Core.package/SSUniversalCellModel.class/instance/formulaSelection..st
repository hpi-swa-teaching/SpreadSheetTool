interaction
formulaSelection: aSymbol
	
	aSymbol = formulaSelection ifTrue: [^ self].
	formulaSelection := aSymbol.
	self
		changed: #isGetterIndicated;
		changed: #isSetterIndicated;
		changed: #buildWidget.