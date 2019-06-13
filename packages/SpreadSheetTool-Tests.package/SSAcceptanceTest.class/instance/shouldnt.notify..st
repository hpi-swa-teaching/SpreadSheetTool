assertions
shouldnt: aBlock notify: aFilter
	
	^ self
		shouldnt: aBlock
		raise: ProvideAnswerNotification
		that: [:notification | ('*', aFilter, '*') match: notification messageText]