tools
findWindowsOpenedWhile: anActionBlock
	
	^ self findWindowsOpenedWhile: anActionBlock of: [
		PluggableSystemWindow allSubInstances select: #isInWorld]