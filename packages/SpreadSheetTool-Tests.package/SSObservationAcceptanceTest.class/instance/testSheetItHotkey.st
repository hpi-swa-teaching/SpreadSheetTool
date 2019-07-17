testing
testSheetItHotkey

	| workspace window |
	workspace := self findWindowOpenedWhile: [Workspace open].
	window := self findToolWindowOpenedWhile: [
		(workspace findByCriteria: #isTextView)
			sendKeys: 'World';
			closeAutocompletion;
			sendControl: $h].
	self should: window inspect: World.