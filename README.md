PhoneGap client-backend demo
============================

Example of PhoneGap mobile application getting data from remove data source by json.


Client files:

js/jquery.js - jQuery lib
config.xml - PhoneGap config file
index.html - demo client app



Backend files:

backend-api.rb - sinatra app
config.ru - config file


Deploy backend
--------------

1. Create Cloudfoundry.com account (free)
2. Install Ruby
3. Install vmc gem (gem install vmc)
4. Set target/login/pwd
5. Push application from within folder:

   vmc push phonegap-client-backend-demo

  Change "phonegap-client-backend-demo" to own, this will be subdomain `phonegap-client-backend-demo`


Test:

  http://phonegap-client-backend-demo.cloudfoundry.com/api/items.json

Edit `index.html` and set URL to this backend

  var backend = 'http://phonegap-client-backend-demo.cloudfoundry.com/api/items.json';

For update backend and deploy (where phonegap-client-backend-demo is your name):

  vmc update phonegap-client-backend-demo



Deploy client
-------------

1. Create build.phonegap.com acccount
2. Upload zip file, or link to github account