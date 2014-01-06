<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="layout" content="angularBody"/>
    <title>Mocked (secure) AngularJS App</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mock-secure-demo.css')}" type="text/css">
    <r:require module="grangular-secure-bootstrap" />
</head>
<body ng-app="angular-auth-demo">
<div  class="auth-demo-application waiting-for-angular">

    <a href="https://github.com/arief-hidayat/grangular/tree/secure">
        <img style="position: absolute; top: 0; right: 0; border: 0;"
             src="https://s3.amazonaws.com/github/ribbons/forkme_right_green_007200.png"
             alt="Fork me on GitHub">
    </a>

    <div id="initializing-panel"></div>

    <div id="content-outer">

        <div id="login-holder">
            <div id="loginbox">
                <div id="login-inner" ng-controller="LoginController">
                    Note: login as admin/admin<br>&nbsp;
                    <form ng-submit="submit()">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <th>Username</th>
                                <td><input type="text" class="login-inp" ng-model="username"/></td>
                            </tr>
                            <tr>
                                <th>Password</th>
                                <td><input type="password" class="login-inp" ng-model="password"/></td>
                            </tr>
                            <tr>
                                <th></th>
                                <td><input type="submit" class="submit-login"/></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="clear"></div>
            </div>
        </div>

        <div id="content" ng-controller="ContentController">

            <h1>HTTP Auth Interceptor Module Demo</h1>
            <h2>for AngularJS</h2>

            <h3>What is the purpose of this demo?</h3>
            <p>
                This demo application is originally from
                <a href="https://github.com/witoldsz/angular-http-auth">
                    https://github.com/witoldsz/angular-http-auth
                </a>
            </p>
            <p>
                Instead of using <a href="http://docs.angularjs.org/api/ngMockE2E"> ngMockE2E module</a>, this demo using Grails with Spring Security.
            </p>
            <hr>
            <br>&nbsp;
            <h3>Enter some data and submit to send and access public API (see DataController#publicData)</h3>
            <form ng-submit="publicAction()">
                Enter public data:
                <input type="text" ng-model="publicData">
                <input type="submit" value="Submit"/>
            </form>
            <p ng-repeat="p in publicContent">Server says: {{p}}</p>

            <br/>
            <br/>

            <h3>Enter some data and submit to send and access protected API (see DataController#protectedData).</h3>
            <form ng-submit="restrictedAction()">
                Enter restricted data:
                <input type="text" ng-model="restrictedData">
                <input type="submit" value="Submit"/>
            </form>
            <p ng-repeat="r in restrictedContent">Server says: {{r}}</p>

            <br/>
            <br/>

            <h3>Press the button to log out.</h3>
            <input type="button" value="Log out" ng-click="logout()"/>
            <p>
                The button will tell the server to forget about your session and also
                it will remove sensitive data from page.
            </p>
            <p>
                In real application it could do
                something else like:
            </p>
            <ul>
                <li>forcing login window to appear to hide data,</li>
                <li>reloading web page to purge application from received content or</li>
                <li>whatever you find appropriate...</li>
            </ul>

            <div class="clear">&nbsp;</div>

            <hr>
            <br>&nbsp;
        </div>
    </div>

</div>

</body>
</html>
