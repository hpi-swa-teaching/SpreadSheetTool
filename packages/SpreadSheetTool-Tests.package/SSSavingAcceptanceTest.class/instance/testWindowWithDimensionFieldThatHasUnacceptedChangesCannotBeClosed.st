testing
testWindowWithDimensionFieldThatHasUnacceptedChangesCannotBeClosed
	"Test for #10 (Simple Menu)"

	self findAnyCell
		sendKeys: self someContent.
	
	self
		should: [self subject delete]
		raise: ProvideAnswerNotification
		butHandle: [:notification | notification resume: false].
	
	self assertWindowNotDeleted: self subject.