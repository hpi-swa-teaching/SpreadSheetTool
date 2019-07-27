testing
testWindowWithHeaderThatHasContentCannotBeClosed
	"Test for #10 (Simple Menu)"

	self findAnyHeader
		sendKeys: self someContent.
	self assertWindowCannotBeClosed.