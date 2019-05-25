assertions
assertWindowClosesWhile: aBlock
	"We cannot use MTF here as we want to test the opening procedure itself"

	| allInstances closedInstances |
	allInstances := self findAllToolWindows.
	aBlock value.
	closedInstances := allInstances
		copyWithoutAll: self findAllToolWindows.
	self
		assert: closedInstances hasSingle
		description: 'Expected window to close but id didn''t'.