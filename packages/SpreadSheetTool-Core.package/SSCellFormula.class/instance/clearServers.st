dependencies
clearServers

	servers
		do: [:server | server removeClient: self];
		removeAll.