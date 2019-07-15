tools
findHeaderFor: dimension at: anIndex in: aWindow

	^ aWindow createWrapperFor:
		((self findHeadersFor: dimension in: aWindow)
			at: anIndex)