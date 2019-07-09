interaction
update: what

	(#(contents object) includes: what) ifTrue: [self refreshValue].
	what = #rawValue ifTrue: [self editContents: self cell rawValue].
	^ super update: what