<!doctype html>
<html lang="en" ng-app="myApp">
<head>
    <meta charset="utf-8">
    <meta name="layout" content="main"/>
    <title>My AngularJS App</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'app.css')}" type="text/css">
    <r:require module="grangular-seed" />
</head>
<body>
<ul class="menu">
    <li><a href="#/view1">view1</a></li>
    <li><a href="#/view2">view2</a></li>
</ul>

<div ng-view></div>

<div>Angular seed app: v<span app-version></span></div>
</body>
</html>
