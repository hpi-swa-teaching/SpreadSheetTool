testing
testAcceptContentsNotifiesObservers

	| observer |
	observer := SSMockingObserver new.
	model addDependent: observer.
	
	model acceptContents: self someText.
	
	self assert: #contents equals: observer singleUpdate.