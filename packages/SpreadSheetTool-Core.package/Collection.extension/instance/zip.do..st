*SpreadSheetTool-Core-enumerating
zip: aCollection do: aBlock

	| index secondArray |
	self assert: self size = aCollection size.
	
	secondArray := aCollection asArray.
	index := 0.
	self do: [:first |
		index := index + 1.
		aBlock value: first value: (secondArray at: index)]