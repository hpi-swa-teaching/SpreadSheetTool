accessing
contents

	^ self editMode
		ifFalse: [self cell value ifNotNil: [:v | (v startsWith: '^')
			ifTrue: [(Compiler evaluate: v) asString]
			ifFalse:[v]]]
		ifTrue: [self cell value]