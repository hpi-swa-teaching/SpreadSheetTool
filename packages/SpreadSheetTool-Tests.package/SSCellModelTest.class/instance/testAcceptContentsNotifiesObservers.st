testing
testAcceptContentsNotifiesObservers

	| observer |
	observer := SSMockingObserver new.
	model addDependent: observer.
	
	model acceptContents: self someText.
	
	self assert: (observer logIncludes: #contents).