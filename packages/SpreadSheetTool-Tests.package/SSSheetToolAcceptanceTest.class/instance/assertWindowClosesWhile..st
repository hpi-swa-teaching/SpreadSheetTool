assertions
assertWindowClosesWhile: aBlock
	"We cannot use MFT here as we want to test the opening procedure itself"

	| allInstances result closedInstances |
	allInstances := self findAllToolWindows.
	result := aBlock value.
	closedInstances := allInstances
		copyWithoutAll: self findAllToolWindows.
	self assert: 1 equals: closedInstances size.	
	
	"Clean up"
	result abandon