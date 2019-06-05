tools
openSheetByName: aName

	| window |
	window := self findWindowOpenedWhile: [self tryOpenSheetByName: aName].
	^ MTFMorphWrapper newWith: window asOrderedCollection