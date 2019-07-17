*SpreadSheetTool-Tests-get/set - flags
setFlags: associations during: aBlock
	"Set the flags to the given values for the duration of aBlock"

	| changeDictionary |
	changeDictionary := associations as: Dictionary.
	(changeDictionary withKeysCollect: [:preference | self valueOfFlag: preference])
		in: [:previousSettings |
			self setFlags: changeDictionary.
			aBlock ensure: [self setFlags: previousSettings]].