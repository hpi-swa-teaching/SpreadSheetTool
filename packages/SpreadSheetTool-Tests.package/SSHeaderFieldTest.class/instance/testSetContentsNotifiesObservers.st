testing
testSetContentsNotifiesObservers

	| observer |
	observer := SSMockingObserver new.
	model addDependent: observer.
	model contents: self someString.
	self assert: (observer logIncludes: #contents).