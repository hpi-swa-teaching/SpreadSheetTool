tools
findHeaderFor: dimension at: anIndex

	^ self subject createWrapperFor:
		((self findHeadersFor: dimension)
			at: anIndex)