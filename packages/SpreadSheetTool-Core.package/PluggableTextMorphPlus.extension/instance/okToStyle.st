*SpreadSheetTool-Core-testing
okToStyle

	^ styler
		ifNil:[false]
		ifNotNil: [:s | (model class canUnderstand: #aboutToStyle:forMorph:)
			ifTrue: [model aboutToStyle: s forMorph: self]
			ifFalse: [model aboutToStyle: s]]