testing
testRowHeaderFactory

	| factory |
	factory := [:r | self fail: 'this should be never run'].
	
	sheet rowHeaderFactory: factory.
	
	self assert: factory equals: sheet rowHeaderFactory.