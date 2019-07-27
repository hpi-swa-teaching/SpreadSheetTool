testing
testSteppingButtonExists

	| button |
	button := self subject findByLabelFilter: 'Stepping*'.
	self assert: button isUnique.