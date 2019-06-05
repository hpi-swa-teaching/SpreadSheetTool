tools
sheetAction: anActionLabel ByName: aName

	| window |
	window := self findWindowOpenedWhile: [self trySheetAction: anActionLabel ByName: aName].
	^ MTFMorphWrapper newWith: window asOrderedCollection