accessing
contents: aTextOrString

	self parent
		perform: self setProperty
		with: aTextOrString asNumber.
	self contentsChanged.