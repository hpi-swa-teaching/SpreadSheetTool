testing
testResizingInsertsDefaultRowHeaders
	"Acceptance test for #5 (Resizable tables)"

	| oldRowCount |
	oldRowCount := self measureRangeFor: #rows.
	self resize: #rows to: (self someLargerRangeFor: #rows).
	self assertRowHeadersOrderWithoutFirst: oldRowCount.