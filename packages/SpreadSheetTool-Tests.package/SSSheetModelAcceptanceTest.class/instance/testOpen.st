as yet unclassified
testOpen
	"Test for #1"

	| allInstances result newInstances |
	allInstances := SSSheetModel allInstances.
	result := SSSheetModel open.
	newInstances := SSSheetModel allInstances copyWithoutAll: allInstances.
	result abandon.
	self assert: newInstances size equals: 1.