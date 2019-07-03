testing
testAcceptContentsNotifiesObservers

	| observer |
	observer := SSMockingObserver new.
	model addDependent: observer.
	
	model
		editContents: self someText;
		acceptContents.
	
	self assert: #contents equals: observer singleUpdate.