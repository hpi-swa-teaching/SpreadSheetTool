accessing
models

	^ (Model withAllSubclasses sortedBy: #asString)
		storeFirstAll: (knownConfigurations keys sortedBy: #asString)