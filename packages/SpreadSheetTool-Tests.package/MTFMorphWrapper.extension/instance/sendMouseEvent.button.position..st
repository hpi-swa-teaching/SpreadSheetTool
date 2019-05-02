*SpreadSheetTool-Tests-interacting
sendMouseEvent: aType button: aButton position: aPoint

	(self findByPosition: aPoint) morphs do: [ :morph |
		self hand newMouseFocus: morph.
		morph handleEvent: (self generateMouseEvent: aType 
			button: aButton
			position: aPoint).
		self wait].