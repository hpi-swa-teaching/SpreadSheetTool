toolbuilder
specMatrixForContents: aBuilder

	^ (self contentSheet asMatrixWithOrigin: nil)
		withIndicesCollect: [:cellModel :row :column | self
			specForCell: cellModel
			with: aBuilder
			atRow: row
			atColumn: column]