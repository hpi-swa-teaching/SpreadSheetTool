accessing
parent: aModel

	parent ifNotNil: [self removeDependent: parent].
	parent := aModel.
	parent ifNotNil: [self addDependent: parent].