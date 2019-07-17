running
tearDown

	(self subject findByCriteria: #isTextView) closeAutocompletion.
	[windowHeap ifNotNil: [windowHeap do: #abandon]]
		on: ProvideAnswerNotification
		do: [:notification | notification resume: true].
	super tearDown.