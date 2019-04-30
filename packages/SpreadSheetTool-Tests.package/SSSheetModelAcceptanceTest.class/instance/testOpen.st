testing
testOpen
	"Test for #1 (I can open a Table Morph)"
	
	"We cannot use MFT here as we want to test the opening procedure itself"
	| allInstances result newInstances |
	allInstances := SSSheetModel allInstances.
	result := SSSheetModel open.
	newInstances := SSSheetModel allInstances copyWithoutAll: allInstances.
	result abandon.
	self assert: newInstances size equals: 1.