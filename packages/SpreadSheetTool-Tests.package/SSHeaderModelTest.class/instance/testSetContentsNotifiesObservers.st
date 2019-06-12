testing
testSetContentsNotifiesObservers

	| observer |
	observer := SSMockingObserver new.
	model addDependent: observer.
	
	model contents: self someText.
	
	self assert: #contents equals: observer singleUpdate.