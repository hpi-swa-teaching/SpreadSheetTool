interaction
findBuilderSelector

	| selectors |
	(self model class canUnderstand: #createSpecWith:)
		ifTrue: [^ #createSpecWith:].
	selectors := self model class allSelectors asArray
		select: [:selector | selector numArgs = 1].
	^ UIManager default
		chooseFrom: selectors
		values: selectors
		title: 'Choose toolbuilder method'