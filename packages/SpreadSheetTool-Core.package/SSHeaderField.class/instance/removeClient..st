dependencies
removeClient: aClient
	"We cannot handle the client/server pattern, so unregister regular dependent"

	self removeDependent: aClient.