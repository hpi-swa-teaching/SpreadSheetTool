tools-navigating
findToolWindowsOpenedWhile: anActionBlock
	
	^ self findMorphsOpenedWhile: anActionBlock from: [self findAllToolWindows]