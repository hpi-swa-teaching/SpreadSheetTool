testing
testWindowWithDimensionFieldThatWasChangedCannotBeClosed
	"Test for #10 (Simple Menu)"

	self findAnyCell
		sendKeys: self someContent;
		sendControlSave.
	self assertWindowCannotBeClosed.