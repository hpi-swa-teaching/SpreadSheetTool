assertions
findAllToolWindows

	^ PluggableSystemWindow allInstances select: [:window |
		window model class = self toolUnderTest]