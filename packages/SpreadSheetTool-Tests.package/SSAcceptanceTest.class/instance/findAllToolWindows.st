tools-navigating
findAllToolWindows

	^ (self toolUnderTest allInstances collectAll: #containingWindows)
		select: #isInWorld