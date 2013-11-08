modules = {
    'grangular-seed' {
        dependsOn 'angular','grails-angular-template', 'angular-route'
        resource url:'js/app.js'
        resource url:'js/services.js'
        resource url:'js/controllers.js'
        resource url:'js/filters.js'
        resource url:'js/directives.js'
    }
    'grangular-mock-secure' {
        dependsOn 'angular'
        resource url:'js/angular/http-auth-interceptor.js'
//        resource url:'js/secure/content-mocks.js'
        resource url:'js/secure/main.js'
        resource url:'js/secure/login.js'
        resource url:'js/secure/content.js'
    }
}