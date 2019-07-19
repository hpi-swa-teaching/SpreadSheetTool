toolbuilder
update: what

	what = #messageListIndex ifTrue: [self contentsChanged].
	^ super update: what