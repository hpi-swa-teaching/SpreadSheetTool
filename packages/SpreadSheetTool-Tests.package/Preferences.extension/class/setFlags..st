*SpreadSheetTool-Tests-get/set - flags
setFlags: changeDictionary
	
	changeDictionary keysAndValuesDo: [:preference :value |
		self setPreference: preference toValue: value].