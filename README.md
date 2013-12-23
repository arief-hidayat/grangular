### Grangular

In this repo, we'll combine Grails and AngularJS. We'll try to use the latest version as much as possible.

The master branch will combined more javascript libraries and Grails plugins, so this might grows more opinionated.
You can refer to 'basic' branch for Grails-angularJS-only integration.

Currently, we have added Spring Security into the project. Security is important, especially for enterprise.
Basically, we used the angular implementation from here https://github.com/witoldsz/angular-http-auth, and replace the angular-mocks with real API provided by Grails, where protected APIs will be secured by Spring security.

I opted to use grails-angularjs-resources plugin to provide the AngularJS libraries. 

Finally, you can run <code>grails run-app</code> and check the following demo url:

<code>http://localhost:8080/grangular</code>

Optionally, I have included rebel.xml in src/java. if you have jrebel, you might want to run grails using the following command (please change the jrebel path accordingly):

<code>
grails -noreloading run-app GRAILS_OPTS="javaagent:C:/jrebel/jrebel.jar"
</code>

TODO: add more code for testing.

### Note

I'm just starting to learn AngularJS. So, perhaps my implementation is not following the best practices or there's better approach.

Feel free to give feedback and contribute. =)

