accessing
header: aHeader

	header := aHeader.
	originalContents := self contents.
	self contents: self contents.