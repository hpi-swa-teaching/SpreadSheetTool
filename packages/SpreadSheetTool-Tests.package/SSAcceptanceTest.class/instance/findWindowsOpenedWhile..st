tools-navigating
findWindowsOpenedWhile: anActionBlock
	
	^ self findMorphsOpenedWhile: anActionBlock from: [
		World submorphsSatisfying: #isSystemWindow]