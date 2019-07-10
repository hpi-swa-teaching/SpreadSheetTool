dependencies
update: what

	what = modelConfig contentGetter ifTrue: [
		^ self update: what with: self object].
	
	^ super update: what