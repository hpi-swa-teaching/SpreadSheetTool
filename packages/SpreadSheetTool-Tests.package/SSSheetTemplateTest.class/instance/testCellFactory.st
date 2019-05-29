testing
testCellFactory

	| factory |
	factory := [:r :c | self fail: 'this should be never run'].
	
	template cellFactory: factory.
	
	self assert: factory equals: template cellFactory.