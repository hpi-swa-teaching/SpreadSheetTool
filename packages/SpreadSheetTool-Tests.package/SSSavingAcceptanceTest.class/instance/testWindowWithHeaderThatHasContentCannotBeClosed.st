testing
testWindowWithHeaderThatHasContentCannotBeClosed
	"Test for #10 (Simple Menu)"

	self findAnyHeader
		sendKeys: self someContent.
	
	self
		should: [self subject delete]
		raise: ProvideAnswerNotification
		butHandleException: [:notification | notification resume: false].
	
	self assertWindowNotDeleted: self subject.