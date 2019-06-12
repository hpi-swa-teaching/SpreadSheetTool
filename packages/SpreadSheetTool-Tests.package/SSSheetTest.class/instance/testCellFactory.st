testing
testCellFactory

	| factory |
	factory := [:r :c | self fail: 'this should be never run'].
	
	sheet cellFactory: factory.
	
	self assert: factory equals: sheet cellFactory.