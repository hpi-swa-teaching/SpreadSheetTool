*SpreadSheetTool-Tests-interacting
selectedText

	| selectionInterval |
	selectionInterval := self selectionInterval.
	^ self text copyFrom: selectionInterval first to: selectionInterval last