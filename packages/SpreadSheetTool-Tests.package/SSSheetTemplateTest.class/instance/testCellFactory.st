testing
testCellFactory

	| factory |
	factory := [:r :c | self someUniqueValueFactory].
	
	template cellFactory: factory.
	
	self assert: factory equals: template cellFactory.