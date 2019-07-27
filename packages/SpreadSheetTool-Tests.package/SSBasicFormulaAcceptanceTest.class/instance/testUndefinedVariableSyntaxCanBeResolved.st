testing
testUndefinedVariableSyntaxCanBeResolved
	"Regression test"

	| cell |
	self useInlineSyntaxErrorsDuring: [
		cell := self findAnyCell.
		cell sendKeys: '^ slef'.
		self
			should: [cell sendControlSave]
			notify: 'variable'
			thenAnswer: #self.
		self assert: '^ self' equals: cell read].