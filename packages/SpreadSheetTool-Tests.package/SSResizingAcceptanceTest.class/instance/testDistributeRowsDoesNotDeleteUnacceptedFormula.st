testing-distributing
testDistributeRowsDoesNotDeleteUnacceptedFormula
	"Regression test for #49 (Bug: Distributing a cell deletes unaccepted formulas)"

	(self findCellAt: self someCellIndex)
		sendKeys: self someFormula.
		
	(self subject findByLabel: 'Distribute rows') click.
	
	self
		assert: self someFormula
		equals: (self findCellAt: self someCellIndex) read.