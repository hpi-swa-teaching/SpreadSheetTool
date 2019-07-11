forwarding
object: anObject

	model perform: modelConfig contentSetter with: (
		modelConfig contentSetter = #contents:
			ifTrue: [anObject asString]
			ifFalse: [anObject]).