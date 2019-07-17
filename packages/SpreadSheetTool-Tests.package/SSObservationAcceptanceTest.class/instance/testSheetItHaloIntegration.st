testing
testSheetItHaloIntegration

	| menu morph window |
	morph := Morph new.
	menu := self subject createWrapperFor:
		(morph buildDebugMenu: self subject hand).
	window := self findToolWindowOpenedWhile: [
		menu
			sendKeys: 'SqueakSheet';
			sendKey: Character cr].
	self should: window inspect: morph.