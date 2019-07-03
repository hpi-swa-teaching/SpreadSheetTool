forwarding
object

	(model class canUnderstand: #object)
		ifTrue: [^ model object].
	(model class canUnderstand: #contents)
		ifTrue: [^ model contents].
	^ model