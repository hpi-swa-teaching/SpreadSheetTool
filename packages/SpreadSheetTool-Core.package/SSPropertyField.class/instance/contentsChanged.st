as yet unclassified
contentsChanged

	super contentsChanged.
	self parent
		perform: self setProperty
		with: self contents asNumber.