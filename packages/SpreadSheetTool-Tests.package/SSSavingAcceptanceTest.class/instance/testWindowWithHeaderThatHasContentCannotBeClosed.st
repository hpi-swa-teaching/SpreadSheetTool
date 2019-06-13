testing
testWindowWithHeaderThatHasContentCannotBeClosed
	"Test for #10 (Simple Menu)"

	self findAnyHeader
		sendKeys: self someContent.
	
	self
		should: [self subject delete]
		notify: 'changes'
		thenAnswer: false.
	
	self assertWindowNotDeleted: self subject.