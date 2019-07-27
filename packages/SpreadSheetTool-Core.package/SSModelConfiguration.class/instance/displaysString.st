accessing
displaysString
	"If true, the contentSetter does not understand arbitrary objects and must be passed a string representation"

	^ displaysString ifNil: [self contentSetter = #contents:]