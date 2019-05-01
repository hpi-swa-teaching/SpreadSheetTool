toolbuilder
createSpecForDimensionFieldsWith: aBuilder

	^ {
		(SSTextField new
			contents: self columnCount asString; 
			createSpecWith: aBuilder 
				atFrame: ((0@0) 
					extent: self propertyTextFieldExtent)).
		(SSTextField new
			contents: self rowCount asString;  
			createSpecWith: aBuilder
				atFrame: ((0@1/10) 
					extent: self propertyTextFieldExtent)) }
	