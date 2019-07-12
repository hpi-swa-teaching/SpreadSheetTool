interaction
update: what

	self flag: #TODO "do we need both selectors here?".
	(#(contents object) includes: what) ifTrue: [self serverChanged].
	what = #rawValue ifTrue: [self editContents: self cell rawValue].
	^ super update: what