testing
testColumnHeaderFactory

	| factory |
	factory := [:c | self fail: 'this should be never run'].
	
	template columnHeaderFactory: factory.
	
	self assert: factory equals: template columnHeaderFactory.