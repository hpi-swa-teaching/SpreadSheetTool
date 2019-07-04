interaction
update: what

	what = #contents ifTrue: [self refreshValue].
	what = #rawValue ifTrue: [self editContents: self cell rawValue].
	^ super update: what