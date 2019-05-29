testing
testContents

	textField contents: self someContent.
	
	self assert: self someContent equals: textField contents.