accessing
contents: aTextOrString

	self cell isFormula ifTrue: [^ self]. "todo rename method so that this is intuitive"
	self cell rawValue: aTextOrString asString.
	self modelContentsChanged.