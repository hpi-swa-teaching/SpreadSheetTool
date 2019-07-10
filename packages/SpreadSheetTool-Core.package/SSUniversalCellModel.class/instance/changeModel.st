interaction
changeModel

	| modelClass |
	modelClass := self chooseModel ifNil: [^ self].
	self initializeModel: modelClass withConfig: SSModelConfiguration default.
	"TODO: ModelConfig irgendwo erstellen!"