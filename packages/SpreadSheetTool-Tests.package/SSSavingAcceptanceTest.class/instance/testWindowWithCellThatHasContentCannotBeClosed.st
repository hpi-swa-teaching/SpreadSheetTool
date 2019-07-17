testing
testWindowWithCellThatHasContentCannotBeClosed
	"Test for #10 (Simple Menu)"

	self findAnyCell
		sendKeys: self someContent.
	self assertWindowCannotBeClosed.