assertions
while: aBlock giveInterview: answers

	| firstAnswer |
	answers ifEmpty: [^ aBlock value].
	firstAnswer := answers first.
	^ self
		while: [self
			should: aBlock
			notify: firstAnswer key
			thenAnswer: firstAnswer value]
		giveInterview: answers copyWithoutFirst