running
tearDown

	self subject ifNotNil: [:subject |
		(subject findByCriteria: #isTextView) closeAutocompletion].
	[windowHeap ifNotNil: [windowHeap do: #abandon]]
		on: ProvideAnswerNotification
		do: [:notification | notification resume: true].
	super tearDown.