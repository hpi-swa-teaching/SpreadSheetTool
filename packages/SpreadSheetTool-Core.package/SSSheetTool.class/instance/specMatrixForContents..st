toolbuilder
specMatrixForContents: aBuilder

	^ (contentModels asMatrixWithOrigin: nil)
		withIndicesCollect: [:cellModel :row :column | self
			specForCell: cellModel
			with: aBuilder
			atColumn: column
			atRow: row]