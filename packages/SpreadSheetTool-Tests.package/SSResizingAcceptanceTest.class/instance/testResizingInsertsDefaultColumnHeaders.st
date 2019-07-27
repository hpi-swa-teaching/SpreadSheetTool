testing
testResizingInsertsDefaultColumnHeaders
	"Acceptance test for #5 (Resizable tables)"

	| oldColumnCount |
	oldColumnCount := self measureRangeFor: #columns.
	self resize: #rows to: (self someLargerRangeFor: #columns).
	self assertColumnHeadersOrderWithoutFirst: oldColumnCount.