toolbuilder
createView

	^ (self new
		initializeWithRowCount: 5
		columnCount: 5)
		buildWith: ToolBuilder default