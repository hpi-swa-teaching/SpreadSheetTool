forwarding
refreshValue

	^ (model class canUnderstand: #refreshValue)
		ifTrue: [model refreshValue]