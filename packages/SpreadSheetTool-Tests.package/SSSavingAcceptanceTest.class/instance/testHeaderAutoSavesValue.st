testing-autosave
testHeaderAutoSavesValue
	"Acceptance test for #17 (Automatic cell saving)"

	| header |
	header := self findAnyHeader.
	header
		sendClearTextField;
		sendKeys: self someContent.
	self
		deny: header hasUnacceptedEdits;
		assert: self someContent equals: header read.