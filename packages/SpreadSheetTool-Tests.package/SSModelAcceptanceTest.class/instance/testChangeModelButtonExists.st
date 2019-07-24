testing
testChangeModelButtonExists
	"Acceptance test for #64 (Access object model)"

	| button |
	button := self findModelButtonAt: self someCellIndex.
	self assert: button isUnique.