*SpreadSheetTool-Core-enumerating
asDictionaryByValue: valueBlock

	^ (self collect: [:item | item -> (valueBlock value: item)])
		as: Dictionary