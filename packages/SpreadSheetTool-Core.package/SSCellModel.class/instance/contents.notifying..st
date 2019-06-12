accessing
contents: aTextOrString notifying: aController

	self cell rawValue: aTextOrString asString.
	self modelContentsChanged.
	self editMode: false.