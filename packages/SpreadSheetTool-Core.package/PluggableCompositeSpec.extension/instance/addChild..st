*SpreadSheetTool-Core-accessing
addChild: aChild

	children ifNil: [children := OrderedCollection new].
	^ children add: aChild