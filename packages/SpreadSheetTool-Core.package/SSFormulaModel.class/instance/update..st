updating
update: what

	self flag: #caseOf:.
	what = #input ifTrue: [self editContents: self formula input].
	what = #output ifTrue: [self contentsChanged].
	^ super update: what