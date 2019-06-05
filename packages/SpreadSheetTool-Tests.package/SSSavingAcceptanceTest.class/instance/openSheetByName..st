tools
openSheetByName: aName

	| window |
	window := self findWindowOpenedWhile: [self tryOpenSheetByName: aName].
	^ self subject createWrapperFor: window