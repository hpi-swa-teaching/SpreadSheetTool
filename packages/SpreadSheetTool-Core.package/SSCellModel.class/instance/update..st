interaction
update: what

	what = #object ifTrue: [self serverChanged].
	what = #rawValue ifTrue: [self editContents: self cell rawValue].
	^ super update: what