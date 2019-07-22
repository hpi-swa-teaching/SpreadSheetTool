initialize-release
initialize

	super initialize.
	getterFormula := SSEmbeddedGetterFormula sheet: sheet rowIndex: rowIndex columnIndex: columnIndex.
	setterFormula := SSEmbeddedSetterFormula sheet: sheet rowIndex: rowIndex columnIndex: columnIndex.
	getterModel := SSFormulaModel parent: self embeddedFormula: getterFormula.
	setterModel := SSFormulaModel parent: self embeddedFormula: setterFormula.
	setterModel adoptFormula.