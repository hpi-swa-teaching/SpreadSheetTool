tools
findToolWindowsOpenedWhile: anActionBlock
	
	^ self findWindowsOpenedWhile: anActionBlock of: [self findAllToolWindows]