interaction
changeModel

	| modelClass nextSelector |
	modelClass := self chooseModel ifNil: [^ self].
	nextSelector := (modelClass canUnderstand: self defaultBuilderSelector)
		ifTrue: [self defaultBuilderSelector]
		ifFalse: [self chooseBuilderSelector ifNil: [^ self]].
	self initializeModel: modelClass builderSelector: nextSelector.