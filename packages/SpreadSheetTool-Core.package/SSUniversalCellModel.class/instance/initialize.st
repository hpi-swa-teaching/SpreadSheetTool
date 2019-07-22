initialize-release
initialize

	super initialize.
	getterFormula := SSEmbeddedGetterFormula sheet: sheet rowIndex: rowIndex columnIndex: columnIndex.
	setterFormula := SSEmbeddedSetterFormula sheet: sheet rowIndex: rowIndex columnIndex: columnIndex.
	getterModel := SSFormulaModel tool: self parent embeddedFormula: getterFormula.
	setterModel := SSFormulaModel tool: self parent embeddedFormula: setterFormula.
	getterModel addDependent: self.
	setterModel addDependent: self.
	setterModel adoptFormula.