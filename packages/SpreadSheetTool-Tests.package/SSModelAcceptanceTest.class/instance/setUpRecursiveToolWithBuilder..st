tools
setUpRecursiveToolWithBuilder: builderSelector

	| button recursiveTools recursiveTool |
	button := self findModelButtonAt: self someCellIndex.
	self while: [button click] giveInterview: {
		'model' -> self toolUnderTest.
		'constructor' -> #new.
		'build' -> builderSelector.
		'getter' -> #subject.
		'setter' -> #subject:.
		'set*default' -> false }.
	recursiveTools := (self subject
		findByModelKind: self toolUnderTest
		andCriteria: [:morph | (morph isKindOf: PluggablePanelMorph) and: [
			((self subject createWrapperFor: morph)
				findByModelKind: SSHybridFormulaHolder) isPositive]]) morphs.
	recursiveTool := self subject createWrapperFor: (
		recursiveTools reject: [:morph | morph allOwners includesAnyOf: recursiveTools]).
	self assert: recursiveTool isUnique.
	^ recursiveTool