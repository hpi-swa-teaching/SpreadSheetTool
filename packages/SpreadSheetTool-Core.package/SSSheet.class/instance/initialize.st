initialize-release
initialize

	super initialize.
	template := SSSheetTemplate
		cellFactory: [SSCell new]
		headerFactory: [SSHeader new].