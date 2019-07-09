forwarding
object: anObject

	(model class canUnderstand: #object:)
		ifTrue: [^ model object: anObject].
	(model class canUnderstand: #rootObject:)
		ifTrue: [^ model rootObject: anObject].
	(model class canUnderstand: #contents:)
		ifTrue: [^ model contents: anObject asString].
	^ self error: 'Model does not support setting value'