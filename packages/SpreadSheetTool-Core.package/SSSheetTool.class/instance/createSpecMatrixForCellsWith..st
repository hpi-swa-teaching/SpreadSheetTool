toolbuilder
createSpecMatrixForCellsWith: aBuilder

	^ cellModels withIndicesCollect: [:cellModel :row :column |
		self
			createSpecForCell: cellModel
			with: aBuilder
			atColumn: column
			atRow: row]