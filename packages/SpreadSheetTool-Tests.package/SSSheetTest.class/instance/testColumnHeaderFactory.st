testing
testColumnHeaderFactory

	| factory |
	factory := [:c | self fail: 'this should be never run'].
	
	sheet columnHeaderFactory: factory.
	
	self assert: factory equals: sheet columnHeaderFactory.