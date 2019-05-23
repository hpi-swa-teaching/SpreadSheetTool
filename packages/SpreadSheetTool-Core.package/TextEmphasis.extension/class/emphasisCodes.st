*SpreadSheetTool-Core-accessing
emphasisCodes

	^ emphasisCodes ifNil: [
		emphasisCodes := {
			#bold -> 1
		} as: Dictionary]