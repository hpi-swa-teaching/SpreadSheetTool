accessing
getter: aFormula compiled: aBlock

	getterFormula := aFormula.
	getterBlock := aBlock.
	
	(model isKindOf: SSCellModel) ifTrue: [
		model acceptContents: aFormula.
		self flag: #workaround].