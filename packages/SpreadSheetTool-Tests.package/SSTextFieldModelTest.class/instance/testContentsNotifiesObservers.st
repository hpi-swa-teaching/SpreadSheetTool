testing
testContentsNotifiesObservers

	| observer |
	observer := SSMockingObserver new.
	textField addDependent: observer.
	
	textField contents: self someContent.
	
	self assert: #contents equals: observer singleUpdate.