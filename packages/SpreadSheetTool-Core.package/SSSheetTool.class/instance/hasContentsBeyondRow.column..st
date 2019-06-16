testing
hasContentsBeyondRow: aRow column: aColumn
	
	^ (contentModels
		selectElementsBeyondRow: aRow
		beyondColumn: aColumn)
			anySatisfy: #hasContents