*SpreadSheetTool-Tests-interacting
sendMouseDragEventWithButton: aButtonSymbol fromPosition: startPosition toPosition: endPosition
	
	| aButton |
	self flag: #todo. "No senders"
	aButton := (self class perform: aButtonSymbol).
	self mouseDown.
	self morphs do: [:morph |
		self hand newKeyboardFocus: morph.
		morph handleEvent: (self
			generateMouseMoveEventWithButton: aButton
			startPosition: startPosition
			endPosition: endPosition).
		self wait].
	self mouseUp.