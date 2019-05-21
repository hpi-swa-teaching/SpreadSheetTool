toolbuilder
openWithRowCount: aRowCount columnCount: aColumnCount

	| builder model |
	builder := ToolBuilder default.
	model := self
		rowCount: aRowCount
		columnCount: aColumnCount.
	^ builder open: model