### NPM Registry 

#### How to init a test node project to test npm registry
````
yarn init
yarn config list
````
Update the default registry to indy 
````
yarn config set registry http://localhost:8080/api/folo/track/build-npm-registry-001/npm/remote/npmjs/
````
Check the config
````
yarn config list
````

Start local-indy 
Create a remote repo 
````
Package Type: npm
Name:         npmjs
Enabled:      true
Remote URL:   https://registry.npmjs.org/

````

Run the following command to verify if the registry works
````
yarn add @types/react
````


#### How to use indy as a proxy

Update the config of local-indy to make it to support http proxy in httprox.conf:  
````
enabled=true
MITM.enabled=true
````

Update the yarn config to add proxy  
````
yarn config set proxy http://localhost:8081
yarn config set https-proxy http://localhost:8081
yarn config list
````

Run yarn command to verify if the proxy works
````
yarn add json
````
