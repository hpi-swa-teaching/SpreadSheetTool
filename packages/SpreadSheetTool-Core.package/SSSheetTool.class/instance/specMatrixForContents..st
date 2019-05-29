toolbuilder
specMatrixForContents: aBuilder

	^ (contentModels asMatrixWithOrigin: SSOriginHeaderModel new)
		withIndicesCollect: [:cellModel :row :column | self
			specForCell: cellModel
			with: aBuilder
			atColumn: column
			atRow: row]