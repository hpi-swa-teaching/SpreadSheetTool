accessing
cell: aCell

	self cell ifNotNil: [:c | c removeDependent: self].
	cell := aCell.
	self cell addDependent: self.