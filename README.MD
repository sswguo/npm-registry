### NPM Registry 

How to init a test node project to test npm registry
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
