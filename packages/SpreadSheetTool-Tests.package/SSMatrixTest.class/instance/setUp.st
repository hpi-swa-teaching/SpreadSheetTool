running
setUp

	matrix := Matrix
		rows: self rowCount
		columns: self columnCount
		tabulate: [:r :c | r @ c]