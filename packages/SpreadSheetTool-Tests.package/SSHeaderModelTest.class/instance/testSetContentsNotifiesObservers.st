testing
testSetContentsNotifiesObservers

	| observer |
	observer := SSMockingObserver new.
	model addDependent: observer.
	
	model contents: self someText.
	
	self assert: (observer logIncludes: #contents).