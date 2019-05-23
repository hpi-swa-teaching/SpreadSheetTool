*SpreadSheetTool-Core-sorting
sortedBy: aSortAspectBlock
	"Warning: Imperfect performance. If aSortAspectBlock is not trivial, consider using a Dictioanry instead."

	^ self sorted: [:a :b | (aSortAspectBlock value: a) <= (aSortAspectBlock value: b)]