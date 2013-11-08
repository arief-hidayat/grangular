### Grangular

Grails 2.3.1 + AngularJS 1.2.0 (with Grails Spring Security plugin integration)


AngularJS lib files from https://github.com/angular/angular-seed are packaged into grails-angular-resources plugin (https://github.com/arief-hidayat/grails-angularjs-resource).
I have made pull request to original grails-angular-resources repo but the developer has not responded yet.
So, you need to do the following before running this project:

* <code>
git clone https://github.com/arief-hidayat/grails-angularjs-resource.git
</code>
* <code>
cd grails-angularjs-resource
</code>
* <code>
grails maven-install
</code>

I have included rebel.xml in src/java. if you have jrebel, you might want to run grails using the following command (please change the jrebel path accordingly):

<code>
grails -noreloading run-app GRAILS_OPTS="javaagent:C:/jrebel/jrebel.jar"
</code>

I integrated current grangular with Spring Security Plugin and Angular HTTP Auth (https://github.com/witoldsz/angular-http-auth).

I make a small changes to Spring Security plugin (https://github.com/arief-hidayat/grails-spring-security-core). See 'propose' branch.
I've made pull request. So, depends on whether it's being accepted or Burt has better solution, the code here might be changed accordingly.

As of now, you might need to clone my 'propose' branch of Spring security plugin, and do <code>grails maven-install</code>.
Then you can run and check the following url:

<code>http://localhost:8080/grangular</code>

TODO: add more code for testing.

### Note

I'm just starting to learn AngularJS. So, perhaps my implementation is not following the best practices or there's better approach.

Feel free to give feedback and contribute. =)
