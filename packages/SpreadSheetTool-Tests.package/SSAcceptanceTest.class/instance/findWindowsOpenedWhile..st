tools-navigating
findWindowsOpenedWhile: anActionBlock
	
	^ self findWindowsOpenedWhile: anActionBlock from: [
		PluggableSystemWindow allSubInstances select: #isInWorld]