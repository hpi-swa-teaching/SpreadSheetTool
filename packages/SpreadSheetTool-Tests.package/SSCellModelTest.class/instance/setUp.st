running
setUp

	super setUp.
	
	cell := SSCell new.
	anotherCell := SSCell new.
	model
		cell: cell;
		parent: SSMockingSheetTool new;
		buildWith: ToolBuilder default.