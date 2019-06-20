assertions
shouldFormula: aFormula in: aCellIndex notify: aFilter

	| cell |
	cell := self findCellAt: aCellIndex.
	cell
		sendClearTextField;
		sendKeys: aFormula.
		
	self should: [cell sendControlSave] notify: aFilter.