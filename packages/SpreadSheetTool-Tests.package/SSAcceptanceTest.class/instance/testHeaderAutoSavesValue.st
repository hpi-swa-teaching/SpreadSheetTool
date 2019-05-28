testing
testHeaderAutoSavesValue
	"Test for #17"

	| header |
	header := self findAnyHeader.
	
	header
		sendClearTextField;
		sendKeys: self someContent.
	
	self
		assert: self someContent equals: header text asString;
		deny: header hasUnacceptedEdits.