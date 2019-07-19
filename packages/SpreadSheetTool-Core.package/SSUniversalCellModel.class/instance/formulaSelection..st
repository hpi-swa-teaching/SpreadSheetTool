accessing
formulaSelection: aSymbol
	
	formulaSelection := aSymbol.
	self
		changed: #getterIndicated;
		changed: #setterIndicated;
		changed: #buildWidget.