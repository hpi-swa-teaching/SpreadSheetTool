testing
testRowHeaderFactory

	| factory |
	factory := [:r | self fail: 'this should be never run'].
	
	template rowHeaderFactory: factory.
	
	self assert: factory equals: template rowHeaderFactory.