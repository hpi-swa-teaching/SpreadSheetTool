testing
testChangeConfiguration

	| button |
	self chooseInspectorModelAt: self someCellIndex.
	button := self findButtonAt: self someCellIndex byLabel: 'configuration'.
	self while: [button click] giveInterview: {
		'constructor' -> #new.
		'build' -> #buildCodePaneWith:.
		'getter' -> #object.
		'setter' -> #object:.
		'set*default' -> false }.
	self assert: (self subject findByCriteria: #isPluggableListMorph) isNegative.