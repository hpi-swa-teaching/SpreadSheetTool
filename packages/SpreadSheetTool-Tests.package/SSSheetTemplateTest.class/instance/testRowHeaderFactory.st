testing
testRowHeaderFactory

	| factory |
	factory := [:r | self someUniqueValueFactory].
	
	template rowHeaderFactory: factory.
	
	self assert: factory equals: template rowHeaderFactory.