toolbuilder
buildWidget

	^ self formulaSelection
		ifNil: [self buildModel]
		ifNotNil: [self buildFormulaField]