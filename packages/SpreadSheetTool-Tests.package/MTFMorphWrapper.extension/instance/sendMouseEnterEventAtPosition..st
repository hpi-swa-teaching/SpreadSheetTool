*SpreadSheetTool-Tests-interacting
sendMouseEnterEventAtPosition: aPosition

	self flag: #todo "no senders".
	self morphs do: [:morph |
			morph handleEvent: (self
				generateMouseEnterEventAtPosition: aPosition).
			self wait].