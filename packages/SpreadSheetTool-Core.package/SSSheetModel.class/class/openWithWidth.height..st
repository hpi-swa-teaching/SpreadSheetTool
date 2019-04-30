toolbuilder
openWithWidth: aWidth height: aHeight

	^ ((self width: aWidth height: aHeight)
		buildWith: ToolBuilder default) 
			openInWorld;
			yourself