class UrlMappings {

	static mappings = {
        "/secure"(view:"/mock-secure")

        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
	}
}
