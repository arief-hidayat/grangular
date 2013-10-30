modules = {
    'grangular-seed' {
        dependsOn 'angular','grails-angular-template', 'angular-route'
        resource url:'js/app.js'
        resource url:'js/services.js'
        resource url:'js/controllers.js'
        resource url:'js/filters.js'
        resource url:'js/directives.js'
    }
}