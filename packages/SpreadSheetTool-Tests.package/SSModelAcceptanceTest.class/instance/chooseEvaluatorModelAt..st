tools
chooseEvaluatorModelAt: aPoint

	| button |
	button := self findModelButtonAt: aPoint.
	self
		should: [button click]
		notify: 'model'
		thenAnswer: SSEvaluatorModel asString.
	self subject redraw.