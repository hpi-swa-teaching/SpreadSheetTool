interaction
changeFormula
 
	| getterFormula newGetter newSetter setterFormula |
	getterFormula := self requestGetter ifNil: [^ self].
	newGetter := Compiler compile: getterFormula for: nil.
	setterFormula := self requestSetter ifNil: [^ self].
	newSetter := Compiler compile: setterFormula for: nil.
	
	self 
		getter: newGetter;
		setter: newSetter.