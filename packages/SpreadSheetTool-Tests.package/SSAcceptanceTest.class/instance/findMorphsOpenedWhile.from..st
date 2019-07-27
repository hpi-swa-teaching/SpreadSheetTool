tools-navigating
findMorphsOpenedWhile: aBlock from: aMorphCollector
	"We cannot use MTF here as we want to test the opening procedure itself"

	| allMorphs newMorphs |
	[	allMorphs := aMorphCollector value.
		aBlock value.
		newMorphs := aMorphCollector value
			copyWithoutAll: allMorphs]
	ensure: [
		newMorphs ifNotNil: [
			newMorphs do: #hide. "make testing invisible to user"
			windowHeap addAll: newMorphs]].
	
	^ self subject createWrapperFor: newMorphs