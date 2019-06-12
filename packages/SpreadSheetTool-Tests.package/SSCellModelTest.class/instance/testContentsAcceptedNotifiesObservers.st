testing
testContentsAcceptedNotifiesObservers

	| observer |
	observer := SSMockingObserver new.
	model addDependent: observer.
	
	model contentsAccepted: self someText.
	
	self assert: #contents equals: observer singleUpdate.