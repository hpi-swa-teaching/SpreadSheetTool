tools
chooseTextModelAt: aPoint

	| button |
	button := self findModelButtonAt: aPoint.
	[self
		should: [button click]
		notify: 'model'
		thenAnswer: SSTextModel asString	]
			valueSupplyingAnswers: {
				{ '.*set.*default.*'. false }.
				{ '*'. 1 } }.
	self subject redraw.