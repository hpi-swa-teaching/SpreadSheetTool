testing
hasContentsBeyondRow: aRow column: aColumn
	
	^ (contentSheet
		selectElementsBeyondRow: aRow
		beyondColumn: aColumn)
			anySatisfy: #hasContents