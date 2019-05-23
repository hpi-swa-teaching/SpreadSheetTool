*SpreadSheetTool-Core-accessing
singleOne

	self assert: self isSingleton.
	self do: [:each | ^ each].