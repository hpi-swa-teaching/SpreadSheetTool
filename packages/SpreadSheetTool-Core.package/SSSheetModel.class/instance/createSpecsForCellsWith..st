toolbuilder
createSpecsForCellsWith: aBuilder

	^ (self sheet cells withIndicesCollect: [:cell :row :column |
		self
			createSpecForCell: cell asModel
			with: aBuilder
			atColumn: column
			atRow: row]) asArray