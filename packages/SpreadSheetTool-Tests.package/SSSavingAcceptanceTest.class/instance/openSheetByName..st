tools
openSheetByName: aName

	| window |
	window := self findToolWindowOpenedWhile: [
		self tryOpenSheetByName: aName].
	^ self subject createWrapperFor: window