toolbuilder
buildWidget

	^ formulaSelection
		ifNil: [self buildModel]
		ifNotNil: [self buildFormulaField]