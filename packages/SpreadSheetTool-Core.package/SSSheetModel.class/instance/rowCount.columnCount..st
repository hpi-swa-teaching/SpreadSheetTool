accessing
rowCount: aRowCount columnCount: aColumnCount

	sheet rowCount: aRowCount columnCount: aColumnCount.
	cellModels rowCount: aRowCount columnCount: aColumnCount.
	self halt.
	self containingWindows do: [:w | self reopen: w].