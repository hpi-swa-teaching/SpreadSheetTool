updating
update: what with: something

	(something = #contents and: [{self getterModel. self setterModel} includes: what])
		ifTrue: [
			self contentsChanged.
			self formulaSelection: nil.
			self formulaSelection ifNil: [self step]].
	(what = #output and: [{self getterFormula. self setterFormula} includes: something])
		ifTrue: [self subjectChanged: self getterFormula output].
	
	^ super update: what with: something