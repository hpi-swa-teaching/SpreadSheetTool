assertions
assertWindowClosesWhile: aBlock
	"We cannot use MFT here as we want to test the opening procedure itself"

	| allInstances result closedInstances |
	allInstances := self findAllToolWindows.
	result := aBlock value.
	closedInstances := allInstances
		copyWithoutAll: self findAllToolWindows.
	self
		assert: closedInstances isSingleton
		description: 'Expected window to close but id didn''t'.