<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="layout" content="main"/>
    <title>My AngularJS App</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'app.css')}" type="text/css">
    <r:require module="grangular-seed" />
</head>
<body>
<div  ng-app="myApp">
    <ul class="menu">
        <li><a href="#/view1">view1</a></li>
        <li><a href="#/view2">view2</a></li>
    </ul>

    <div ng-view></div>

    <div>Angular seed app: v<span app-version></span></div>
</div>
</body>
</html>
