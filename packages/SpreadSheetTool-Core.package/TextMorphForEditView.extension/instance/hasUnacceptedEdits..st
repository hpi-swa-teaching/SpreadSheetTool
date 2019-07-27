*SpreadSheetTool-Core-editing
hasUnacceptedEdits: aBoolean
	"Set the hasUnacceptedEdits flag in my view."

	aBoolean ifTrue: [hasUnacceptedEditsSinceKeystroke := true].
	editView hasUnacceptedEdits: aBoolean