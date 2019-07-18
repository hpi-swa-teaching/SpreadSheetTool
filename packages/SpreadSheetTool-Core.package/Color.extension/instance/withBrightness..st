*SpreadSheetTool-Core-transformations
withBrightness: aNumber
	
	^ Color
		h: self hue
		s: self saturation
		v: aNumber
		alpha: self alpha