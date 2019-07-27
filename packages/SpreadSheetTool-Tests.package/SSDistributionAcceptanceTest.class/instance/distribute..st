tools
distribute: rowsOrColumns

	(self subject findByLabel: 'Distribute ', rowsOrColumns)
		click.
	self subject redraw.