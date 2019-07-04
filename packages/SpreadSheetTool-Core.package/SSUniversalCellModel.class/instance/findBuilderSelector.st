interaction
findBuilderSelector

	| selectors |
	(self model class canUnderstand: #createSpecWith:)
		ifTrue: [^ #createSpecWith:].
	selectors := self class findAllBuilderSelectorsFor: self model class.
	^ UIManager default
		chooseFrom: selectors
		values: selectors
		title: 'Choose toolbuilder method'