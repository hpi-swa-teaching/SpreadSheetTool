dependencies
update: what with: something

	what = modelConfig contentGetter ifTrue: [
		^ self setter ifNotNil: [(self parent object executeMethod: setter) value: something]].
	
	^ super update: what with: something