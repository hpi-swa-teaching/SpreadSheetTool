assertions
findWindowsOpenedWhile: anActionBlock

	^ self
		findWindowsOpenedWhile: anActionBlock
		in: [self findAllToolWindows]