initialize-release
initialize

	super initialize.
	template := SSSheetTemplate
		cellFactory: [:r :c | SSCell new]
		headerFactory: [:i | SSHeader new].