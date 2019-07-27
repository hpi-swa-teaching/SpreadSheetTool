initialize-release
initialize

	super initialize.
	{	getterFormula := SSCellGetterFormula
			sheet: self sheet rowIndex: rowIndex columnIndex: columnIndex.
		setterFormula := SSCellSetterFormula
			sheet: self sheet rowIndex: rowIndex columnIndex: columnIndex.
		getterModel := SSFormulaHolder
			tool: self tool embeddedFormula: getterFormula.
		setterModel := SSFormulaHolder
			tool: self tool embeddedFormula: setterFormula.	}
				do: [:component | component addDependent: self].
	self setterModel adoptFormula.