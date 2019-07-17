testing
testSheetIt

	| anObject window |
	anObject := Object new.
	window := self findToolWindowOpenedWhile: [anObject sheet].
	self should: window inspect: anObject.