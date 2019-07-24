initialize-release
initialize

	super initialize.
	getterFormula := SSCellGetterFormula sheet: sheet rowIndex: rowIndex columnIndex: columnIndex.
	setterFormula := SSCellSetterFormula sheet: sheet rowIndex: rowIndex columnIndex: columnIndex.
	getterModel := SSFormulaModel tool: self parent embeddedFormula: getterFormula.
	setterModel := SSFormulaModel tool: self parent embeddedFormula: setterFormula.
	getterModel addDependent: self.
	setterModel addDependent: self.
	setterModel adoptFormula.