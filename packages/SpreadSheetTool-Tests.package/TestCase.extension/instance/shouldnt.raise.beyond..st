*SpreadSheetTool-Tests-accessing
shouldnt: aBlock raise: anExceptionalEvent beyond: anotherExceptionalEvent
	
	^ self shouldnt: aBlock raise: anExceptionalEvent that: [:anEvent | (anEvent isKindOf: anotherExceptionalEvent) not]