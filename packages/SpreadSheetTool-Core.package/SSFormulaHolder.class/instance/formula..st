accessing
formula: aFormula

	self formula removeDependent: self.
	formula := aFormula.
	self formula addDependent: self.