interaction
changeFormula
 
	| getterFormula newGetter newSetter setterFormula |
	getterFormula := self requestGetter ifEmptyOrNil: [^ self].
	newGetter := Compiler compile: getterFormula for: nil.
	setterFormula := self requestSetter ifEmptyOrNil: [^ self].
	newSetter := Compiler compile: setterFormula for: nil.
	
	self 
		getter: newGetter;
		setter: newSetter.