toolbuilder
createSpecMatrixForCells: aMatrix with: aBuilder

	^ aMatrix withIndicesCollect: [:cellModel :row :column |
		self
			createSpecForCell: cellModel
				with: aBuilder
			atColumn: column
			atRow: row]