*SpreadSheetTool-Core-copying
storeFirstIfPresent: anObject

	(self includes: anObject) ifFalse: [^ self].
	^ self storeFirstAll: {anObject}