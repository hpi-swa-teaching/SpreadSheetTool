*SpreadSheetTool-Tests-interacting
sendMouseEnterEventWithButton: aButtonSymbol position: aPosition

	| aButton |
	aButton := (self class perform: aButtonSymbol).
	self morphs do: [:morph |
			morph handleEvent: (self
				generateMouseEnterEventWithButton: aButton
				position: aPosition).
			self wait].