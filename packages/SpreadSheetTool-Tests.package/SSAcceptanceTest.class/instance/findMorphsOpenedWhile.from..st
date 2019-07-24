tools-navigating
findMorphsOpenedWhile: aBlock from: aMorphCollector

	| allMorphs newMorphs |
	allMorphs := aMorphCollector value.
	aBlock value.
	newMorphs := aMorphCollector value
		copyWithoutAll: allMorphs.
	newMorphs do: #hide. "make testing invisible to user"
	^ self subject createWrapperFor: newMorphs