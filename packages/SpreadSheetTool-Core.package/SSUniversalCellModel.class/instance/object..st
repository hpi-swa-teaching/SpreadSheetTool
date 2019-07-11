forwarding
object: anObject

	model perform: modelConfig contentSetter with: (
		modelConfig displaysString
			ifTrue: [latestHash
				ifNil: ['']
				ifNotNil: [anObject asString]]
			ifFalse: [anObject]).