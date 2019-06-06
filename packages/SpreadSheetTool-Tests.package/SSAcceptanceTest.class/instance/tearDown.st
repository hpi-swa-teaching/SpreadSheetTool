running
tearDown

	[windowHeap ifNotNil: [windowHeap do: #abandon]]
		on: ProvideAnswerNotification
		do: [:notification | notification resume: true].
	super tearDown.