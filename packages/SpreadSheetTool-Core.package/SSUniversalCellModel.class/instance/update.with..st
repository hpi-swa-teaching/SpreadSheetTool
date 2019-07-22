updating
update: what with: something

	what = modelConfig contentGetter
		ifTrue: [^ self modelChanged: something].
	
	^ super update: what with: something