*SpreadSheetTool-Core-accessing
singleOrNil

	self assert: self hasMany not.
	self do: [:each | ^ each].
	^ nil