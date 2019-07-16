interaction
changeFormula
 
	| getterFormula newGetter newSetter setterFormula |
	getterFormula := self requestGetter ifEmptyOrNil: [^ self].
	newGetter := self compile: getterFormula.
	setterFormula := self requestSetter ifEmptyOrNil: [^ self].
	newSetter := self compile: setterFormula.
	
	self
		getter: getterFormula compiled: newGetter;
		setter: setterFormula compiled: newSetter.