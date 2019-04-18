as yet unclassified
testConstructedSheetHasSpecifiedDimensions

	| width height |
	width := 5. height := 6.
	sheet := SSSheetModel width: width height: height.
	
	self assert: width equals: sheet width.
	self assert: height equals: sheet height