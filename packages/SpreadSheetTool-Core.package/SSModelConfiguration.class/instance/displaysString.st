accessing
displaysString

	^ displaysString ifNil: [self contentSetter = #contents:]