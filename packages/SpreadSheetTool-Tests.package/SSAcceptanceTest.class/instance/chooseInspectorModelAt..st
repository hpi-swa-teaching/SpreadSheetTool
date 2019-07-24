tools-interacting
chooseInspectorModelAt: aPoint

	| button |
	button := self findModelButtonAt: aPoint.
	[self
		should: [button click]
		notify: 'model'
		thenAnswer: Inspector asString	]
			valueSupplyingAnswers: {
				{ '.*constructor.*'. 'new' }.
				{ '.*build.*'. 'buildWith:' }.
				{ '.*getter.*'. 'object' }.
				{ '.*setter.*'. 'object:' }.
				{ '.*set.*default.*'. false }
			}.