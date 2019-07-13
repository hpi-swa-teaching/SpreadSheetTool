tools
findMorphsOpenedWhile: aBlock from: aMorphCollector

	| allMorphs newMorphs |
	allMorphs := aMorphCollector value.
	aBlock value.
	newMorphs := aMorphCollector value
		copyWithoutAll: allMorphs.
	newMorphs do: #hide.
	^ self subject createWrapperFor: newMorphs