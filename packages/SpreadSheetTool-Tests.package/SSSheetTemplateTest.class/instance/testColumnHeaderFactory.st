testing
testColumnHeaderFactory

	| factory |
	factory := [:c | self someUniqueValueFactory].
	
	template columnHeaderFactory: factory.
	
	self assert: factory equals: template columnHeaderFactory.