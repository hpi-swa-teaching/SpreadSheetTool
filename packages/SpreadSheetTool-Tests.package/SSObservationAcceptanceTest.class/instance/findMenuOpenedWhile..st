tools
findMenuOpenedWhile: aBlock

	^ self findMorphOpenedWhile: aBlock from: [MenuMorph allInstances select: #visible]