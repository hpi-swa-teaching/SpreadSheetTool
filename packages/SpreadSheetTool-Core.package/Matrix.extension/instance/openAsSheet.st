*SpreadSheetTool-Core
openAsSheet

	| contentModels tool |
	tool := SSSheetTool new.
	tool rowCount: self rowCount columnCount: self columnCount.
	contentModels := tool instVarNamed: 'contentModels'.
	self withIndicesDo: [:x :r :c |
		(contentModels atRow: r atColumn: c) acceptContents: (x ifNil: '')].
	^ tool open