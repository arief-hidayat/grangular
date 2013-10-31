### Grangular

Grails 2.3.1 + AngularJS 1.2.0-RC3 (check 'secure' branch for those interested with Grails Spring Security plugin integration)

I copied files from https://github.com/angular/angular-seed

AngularJS lib files from angular-seed are packaged into grails-angular-resources plugin (https://github.com/arief-hidayat/grails-angularjs-resource).
Currently, I have no plan to create pull-request to the original plugin repo because the angular distribution in current angular-seed is the unstable version.
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

TODO: add more code for testing.

### Note

I'm just starting to learn AngularJS. So, perhaps my implementation is not following the best practices or there's better approach.

Feel free to give feedback and contribute. =)
