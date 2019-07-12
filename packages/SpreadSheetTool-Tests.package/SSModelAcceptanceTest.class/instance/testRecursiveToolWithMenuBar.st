testing
testRecursiveToolWithMenuBar

	| button recursiveTools |
	button := self findModelButtonAt: self someCellIndex.
	self while: [button click] giveInterview: {
		'model' -> self toolUnderTest.
		'constructor' -> #new.
		'build' -> #buildWith:.
		'getter' -> #object.
		'setter' -> #object:.
		'set*default' -> false }.
	recursiveTools := (self subject findByModelKind: self toolUnderTest andCriteria: [:morph |
		(morph isKindOf: PluggablePanelMorph) and: [((self subject createWrapperFor: morph)
			findByModelKind: SSTextFieldModel) isPositive]]) morphs.
	recursiveTools := recursiveTools reject: [:morph | morph allOwners includesAnyOf: recursiveTools].
	self assert: recursiveTools hasSingle.