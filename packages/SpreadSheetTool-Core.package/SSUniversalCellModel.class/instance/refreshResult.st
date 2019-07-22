forwarding
refreshResult

	^ (model class canUnderstand: #refreshResult)
		ifTrue: [model refreshResult]