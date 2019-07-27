tools-interacting
at: aPoint putGetter: aGetter putSetter: aSetter

	self
		at: aPoint putGetter: aGetter;
		at: aPoint putSetter: aSetter.
	self fullWait.