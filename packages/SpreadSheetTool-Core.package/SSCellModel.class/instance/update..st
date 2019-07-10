interaction
update: what

	self flag: #TODO.
	(#(contents object) includes: what) ifTrue: [self refreshValue].
	what = #rawValue ifTrue: [self editContents: self cell rawValue].
	^ super update: what