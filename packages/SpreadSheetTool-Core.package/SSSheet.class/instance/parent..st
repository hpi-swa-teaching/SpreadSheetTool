accessing
parent: aModel

	parent := aModel.
	self allContents do: [:model | model parent: parent].