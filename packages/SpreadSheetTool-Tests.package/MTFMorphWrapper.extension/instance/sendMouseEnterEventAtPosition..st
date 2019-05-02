*SpreadSheetTool-Tests-interacting
sendMouseEnterEventAtPosition: aPosition

	self morphs do: [:morph |
			morph handleEvent: (self
				generateMouseEnterEventAtPosition: aPosition).
			self wait].