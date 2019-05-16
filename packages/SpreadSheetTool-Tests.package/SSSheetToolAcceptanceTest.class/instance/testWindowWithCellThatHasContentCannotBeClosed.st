testing
testWindowWithCellThatHasContentCannotBeClosed
	"Test for #10 (Simple Menu)"

	self findAnyCell
		sendKeys: self someCellContent;
		sendControlSave.
	
	self
		should: [self subject delete]
		raise: ProvideAnswerNotification
		butHandleException: [:notification | notification resume: false].
	
	self assertWindowNotDeleted: self subject.