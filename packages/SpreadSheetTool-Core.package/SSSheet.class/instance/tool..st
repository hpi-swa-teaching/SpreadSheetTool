accessing
tool: aTool

	tool := aTool.
	self allContents do: [:model | model tool: tool].