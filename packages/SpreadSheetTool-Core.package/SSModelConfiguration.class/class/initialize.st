initialize-release
initialize

	super initialize.
	knownConfigurations ifNil: [knownConfigurations := Dictionary new].
	self addKnownConfigurations.