forwarding
object: anObject

	model perform: modelConfig contentSetter with: (
		modelConfig displaysString
			ifTrue: [({latestHash. anObject} allSatisfy: #isNil)
				ifTrue: ['']
				ifFalse: [anObject asString]]
			ifFalse: [anObject]).