toolbuilder
specMatrixForCells: aMatrix with: aBuilder

	^ aMatrix withIndicesCollect: [:cellModel :row :column |
		self
			specForCell: cellModel
				with: aBuilder
			atColumn: column
			atRow: row]