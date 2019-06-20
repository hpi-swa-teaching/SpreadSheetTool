instance creation
parent: aModel

	^ (super parent: aModel)
		cell: SSCell new;
		yourself