testing data
fixturesForRowCountColumnCount

	| columns rows |
	rows := {
		self someRowIndex.
		self rowCount.
		self rowCount + self someRowIndex }.
	columns := {
		self someColumnIndex.
		self columnCount.
		self columnCount + self someColumnIndex }.
	^ rows cross: columns collect: [:row :column | {row. column}]