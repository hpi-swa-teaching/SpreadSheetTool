updating
update: what with: something

	(something = #contents and: [{getterModel. setterModel} includes: what])
		ifTrue: [self formulaSelection: nil].
	what = modelConfig contentGetter
		ifTrue: [^ self modelChanged: something].
	
	^ super update: what with: something