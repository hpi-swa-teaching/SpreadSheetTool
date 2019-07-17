tools
findToolWindowsOpenedWhile: anActionBlock
	
	^ self findWindowsOpenedWhile: anActionBlock from: [self findAllToolWindows]