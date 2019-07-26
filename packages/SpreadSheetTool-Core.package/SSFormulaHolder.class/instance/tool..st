accessing
tool: aSheetTool

	self removeDependent: tool.
	tool := aSheetTool.
	self addDependent: tool.