class UrlMappings {

	static mappings = {
//        "/secure"(view:"/mock-secure")

        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/secure-bootstrap")
        "500"(view:'/error')
	}
}
