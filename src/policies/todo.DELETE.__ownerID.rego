package todoApp.DELETE.todo.__ownerid

import future.keywords.in
import input.resource
import input.user

default allowed = false

allowed {
	user.attributes.roles[_] == "editor"
	some id, _ in user.identities
	id == resource.ownerid
}

allowed {
	user.attributes.roles[_] == "admin"
}
