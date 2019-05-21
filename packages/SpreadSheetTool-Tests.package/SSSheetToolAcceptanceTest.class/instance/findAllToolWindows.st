assertions
findAllToolWindows

	^ PluggableSystemWindow allInstances select: [:window |
		window model class name = self toolUnderTest name]