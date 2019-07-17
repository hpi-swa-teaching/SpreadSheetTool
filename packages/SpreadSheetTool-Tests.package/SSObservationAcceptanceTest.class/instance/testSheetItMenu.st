testing
testSheetItMenu

	| workspace menu window |
	workspace := (self findWindowOpenedWhile: [Workspace open])
		findByCriteria: #isTextView.
	workspace
		sendKeys: 'World';
		closeAutocompletion.
	menu := self findMenuOpenedWhile: [
		workspace rightClick].
	window := self findToolWindowOpenedWhile: [menu
		sendKeys: 'sheet it';
		sendKey: Character cr].
	self should: window inspect: World.