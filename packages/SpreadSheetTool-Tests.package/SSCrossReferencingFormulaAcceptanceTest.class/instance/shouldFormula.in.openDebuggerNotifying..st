assertions
shouldFormula: aFormula in: aCellIndex openDebuggerNotifying: aFilter

	| cell |
	cell := self findCellAt: aCellIndex.
	cell
		sendClearTextField;
		sendKeys: aFormula.
		
	self should: [cell sendControlSave] openDebuggerNotifying: aFilter.