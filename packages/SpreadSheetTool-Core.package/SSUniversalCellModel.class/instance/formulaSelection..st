interaction
formulaSelection: aSymbol
	
	(self setFormulaSelection: aSymbol) ifFalse: [^ self].
	self
		changed: #isGetterIndicated;
		changed: #isSetterIndicated;
		changed: #buildWidget.