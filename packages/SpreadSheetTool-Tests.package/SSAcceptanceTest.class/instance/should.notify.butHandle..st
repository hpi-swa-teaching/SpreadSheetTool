assertions
should: aBlock notify: aFilter butHandle: aHandler
	
	^ self
		should: aBlock
		raiseOnce: ProvideAnswerNotification
		that: [:notification | ('*', aFilter, '*') match: notification messageText]
		butHandle: aHandler