toolbuilder
createSpecsForCellsWith: aBuilder

	^ (cellModels withIndicesCollect: [:cellModel :row :column |
		self
			createSpecForCell: cellModel
			with: aBuilder
			atColumn: column
			atRow: row]) asArray