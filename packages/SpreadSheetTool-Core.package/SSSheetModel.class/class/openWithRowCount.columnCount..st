toolbuilder
openWithRowCount: aRowCount columnCount: aColumnCount

	^ ((self rowCount: aRowCount columnCount: aColumnCount)
		buildWith: ToolBuilder default) 
			openInWorld;
			yourself