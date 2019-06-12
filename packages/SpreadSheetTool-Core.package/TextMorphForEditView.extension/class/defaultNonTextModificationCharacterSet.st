*SpreadSheetTool-Core-compatibility-constants
defaultNonTextModificationCharacterSet

	^ (Set newFrom: (((0 to: 30) collect: [:code | Character value: code]) difference: Character separators asArray , {Character backspace}))