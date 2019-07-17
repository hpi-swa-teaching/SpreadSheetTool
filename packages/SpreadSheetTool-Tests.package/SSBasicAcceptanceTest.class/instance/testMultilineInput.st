testing
testMultilineInput
	"acceptance test for #60 (Multi-line formulae)"

	| cell |
	cell := self findAnyCell.
	cell
		sendKeys: self someContent;
		sendKey: Character cr.
	self
		assert: self someContent, Character cr
		equals: cell read.