tools
openSheetByName

	| window |
	window := self findWindowOpenedWhile: [self tryOpenSheetByName].
	^ MTFMorphWrapper newWith: window asOrderedCollection