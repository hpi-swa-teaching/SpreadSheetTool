toolbuilder
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: self class applicationName;
		extent: self defaultExtent;
		children: (
			(self createSpecForDimensionFieldsWith: aBuilder)
				copyWith: (self
					createPanelSpecForCells: (
						(cells withIndicesCollect: [:cell :row :column |
							self
								createSpecForCell: cell
								with: aBuilder
								atColumn: column
								atRow: row]) asArray)
					with: aBuilder));
		yourself)