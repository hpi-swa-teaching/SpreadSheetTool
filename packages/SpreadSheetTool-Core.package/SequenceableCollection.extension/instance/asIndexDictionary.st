*SpreadSheetTool-Core-copying
asIndexDictionary

	^ (self withIndexCollect: [:each :index |
		index -> each]) as: Dictionary