interaction
chooseBuilderSelector

	| selectors |
	selectors := self class findAllBuilderSelectorsFor: self model class.
	^ UIManager default
		chooseFrom: selectors
		values: selectors
		title: 'Choose toolbuilder method'