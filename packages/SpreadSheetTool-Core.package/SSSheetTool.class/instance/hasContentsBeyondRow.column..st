testing
hasContentsBeyondRow: aRow column: aColumn
	
	^ (self contentSheet
		selectElementsBeyondRow: aRow
		beyondColumn: aColumn)
			anySatisfy: #hasContents