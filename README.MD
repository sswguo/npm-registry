## NPM Registry/Proxy 

### Prerequisite

Make sure there is a running Indy instance
````
port:       8080
proxy port: 8081
````

Setup example repositories
```
bin/setup_repo.sh
```

Running above command will setup the following repos in Indy:
- One remote repo proxy npmjs.org
- Two hosted repos test01 and test02
- One group repo including the above remote and hosted ones

Build this project against local Indy instance
```
bin/build.sh
```

Publish the package into Indy registry
```
bin/publish.sh
```

Package promotion

Update the promotion request accordingly, file promote/promote_request.json
```
bin/promote.sh
```

