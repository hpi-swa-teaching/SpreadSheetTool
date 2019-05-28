accessing
contents: anInteger

	self parent
		perform: self setProperty
		with: anInteger.
	self contentsChanged.