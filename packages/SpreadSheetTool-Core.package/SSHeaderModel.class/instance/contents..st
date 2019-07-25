accessing
contents: aTextOrString

	super contents: aTextOrString.
	self "halt" contentsChanged.