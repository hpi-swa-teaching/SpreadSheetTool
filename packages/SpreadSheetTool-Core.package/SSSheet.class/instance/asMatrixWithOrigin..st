converting
asMatrixWithOrigin: anOrigin

	| matrix |
	matrix := Matrix rows: self rowCount + 1 columns: self columnCount + 1.
	matrix at: 1 at: 1 put: anOrigin.
	1 to: self columnCount do: [:column |
		matrix at: 1 at: column + 1 put: (self columnHeaderAt: column)].
	1 to: self rowCount do: [:row |
		matrix at: row + 1 at: 1 put: (self rowHeaderAt: row)].
	1 to: self columnCount do: [:column |
		1 to: self rowCount do: [:row |
			matrix at: row + 1 at: column + 1 put:
				(self atRow: row atColumn: column)]].
	^ matrix