"use strict";angular.module("ngSocial.facebook",["ngRoute","ngFacebook"]).config(["$routeProvider",function(e){e.when("/facebook",{templateUrl:"facebook/facebook.html"})}]).config(function(e){e.setAppId("1608450146084528"),e.setPermissions("email,public_profile,user_posts,publish_actions,user_photos")}).run(function(e){!function(e,o,n){var t,i=e.getElementsByTagName(o)[0];e.getElementById(n)||(t=e.createElement(o),t.id=n,t.src="//connect.facebook.net/en_US/sdk.js",i.parentNode.insertBefore(t,i))}(document,"script","facebook-jssdk")}).controller("FacebookCtrl",["$scope","$facebook",function(e,o){function n(){o.api("/me",{fields:"last_name, first_name, email, gender, locale, link, name"}).then(function(n){e.welcomeMsg="Welcome "+n.name,e.isLoggedIn=!0,e.userInfo=n,o.api("/me/picture").then(function(n){e.picture=n.data.url,o.api("/me/permissions").then(function(o){e.permissions=o.data}),o.api("/me/posts").then(function(o){e.posts=o.data})})},function(o){e.welcomeMsg="Please Log In"})}e.isLoggedIn=!1,e.login=function(){o.login().then(function(){console.log("Logged In"),e.isLoggedIn=!0,n()})},e.logout=function(){o.logout().then(function(){console.log("Logged Out"),e.isLoggedIn=!1,n()})},e.postStatus=function(){var t=this.body;o.api("/me/feed","post",{message:t}).then(function(o){e.msg="Thanks for Posting",n()})},n()}]);