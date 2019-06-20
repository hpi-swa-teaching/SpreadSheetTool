testing
testWindowWithCellThatHasContentCannotBeClosed
	"Test for #10 (Simple Menu)"

	self findAnyCell
		sendKeys: self someContent.
	
	self
		should: [self subject delete]
		notify: 'changes'
		thenAnswer: false.
	
	self assertWindowNotDeleted: self subject.