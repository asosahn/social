 <div class="row" ng-controller="FacebookCtrl">
      <div class="col-md-4">
        <h4>{{welcomeMsg}}</h4>
         <div ng-if="isLoggedIn == true" class="animated zoomInDown">
            <a href="{{userInfo.link}}" target="_blank"><img ng-src="{{picture}}" alt="" style="border-radius: 50%;"></a>
          </div>
          <br>
        <div ng-if="isLoggedIn == false">
        <button type="button" class="btn btn-default" ng-click="login()">Login</button>
        </div>
         <div ng-if="isLoggedIn == true" class="animated zoomInDown">
        <button type="button" class="btn btn-default" ng-click="logout()">Logout</button>
        </div>
        <br>
        <br>
        <div class="well" ng-if="isLoggedIn == true" class="animated zoomInDown">
          <h4>User Info</h4>
          <ul>
            <li>ID: {{userInfo.id}}</li>
            <li>First Name: {{userInfo.first_name}}</li>
            <li>Last Name: {{userInfo.last_name}}</li>
            <li>Email: {{userInfo.email}}</li>
            <li>Gender: {{userInfo.gender}}</li>
            <li>Locale: {{userInfo.locale}}</li>
          </ul>
        </div>
        <br>
        <div class="well" ng-if="isLoggedIn == true">
          <h4>Permisions</h4>
          <ul>
            <li ng-repeat="permission in permissions">{{permission.permission}} - {{permission.status}}</li>
          </ul>
        </div>
      </div>
      <div class="col-md-8">
        <h3>Welcome to FaceBook</h3>
        <div ng-if="isLoggedIn == true" class="animated zoomInDown">
        <form ng-submit="postStatus()">
          <div class="form-group" >
            <label>Status Update</label>
            <textarea ng-model="body" class="form-control" cols="30" rows="10"></textarea>
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
        <br><br>
        <div ng-repeat="post in posts">
          <div class="stimg">
            <img ng-src="{{picture}}" alt="">
          </div>
            <div class="sttext">
              {{post.message}}
              <div class="sttime">{{post.updated_time}}</div>
            </div>
          </div>
        </div>
        <div ng-if="isLoggedIn == false">
          <p>You need to login to post</p>
        </div>
      </div>