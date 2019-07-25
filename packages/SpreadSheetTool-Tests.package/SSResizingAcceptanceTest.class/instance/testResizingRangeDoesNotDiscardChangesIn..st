testing per dimension
testResizingRangeDoesNotDiscardChangesIn: aDimension
	"Acceptance test for #5 (Resizable tables)"

	| newRange oldRange |
	self findAnyCell sendKeys: self someContent.
	oldRange := self measureRangeFor: aDimension.
	newRange := oldRange + 1.
	self resize: aDimension to: newRange.
	self
		assert: newRange equals: (self measureRangeFor: aDimension);
		assert: self someContent equals: self findAnyCell read.