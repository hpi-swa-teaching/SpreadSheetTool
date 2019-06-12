accessing
contentsAccepted: aTextOrString

	self cell rawValue: aTextOrString asString.
	self parent contentsChanged.
	self editMode: false.