dependencies
addClient: aClient
	"We cannot handle the client/server pattern, so register as regular dependent"

	self addDependent: aClient.