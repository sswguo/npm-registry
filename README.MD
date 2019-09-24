## NPM Registry/Proxy 

### Prerequisite

Setup an Indy instance locally 
````
port:       8080
proxy port: 8081
````

#### [CASE ONE]:  How to use Indy as a npm registry
````
yarn init
yarn config list
````
[Update the config](https://yarnpkg.com/lang/en/docs/cli/config/) to point the default registry to indy  
````
yarn config set registry http://localhost:8080/api/folo/track/build-npm-registry-001/npm/remote/npmjs/
````
Review the config
````
yarn config list
````

Create a remote repo in the [local-indy](http://localhost:8080/#/remote)  
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


#### [CASE TWO]: How to use indy as a proxy

Update the config of local-indy to make it to support http proxy in httprox.conf:  
````
enabled=true
MITM.enabled=true
````

Update the yarn config to set proxy/https-proxy  
````
yarn config set proxy http://localhost:8081
yarn config set https-proxy http://localhost:8081
yarn config list
````

Run yarn command to verify if the proxy works
````
yarn add json
````

