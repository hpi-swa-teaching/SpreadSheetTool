updating
update: what with: something

	what = modelConfig contentGetter
		ifTrue: [^ self setValue: something].
	
	^ super update: what with: something