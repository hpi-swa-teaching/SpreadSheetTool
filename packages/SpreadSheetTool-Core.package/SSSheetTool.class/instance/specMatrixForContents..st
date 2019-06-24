toolbuilder
specMatrixForContents: aBuilder

	^ (contentModels asMatrixWithOrigin: nil)
		withIndicesCollect: [:cellModel :row :column | self
			specForCell: cellModel
			with: aBuilder
			atRow: row
			atColumn: column]