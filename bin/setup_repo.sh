curl -d "@repository/npm/remote/npmjs.json" -H "Content-Type: application/json" -X POST http://localhost:8080/api/admin/stores/npm/remote
curl -d "@repository/npm/hosted/test01.json"  -H "Content-Type: application/json" -X POST http://localhost:8080/api/admin/stores/npm/hosted
curl -d "@repository/npm/group/test01.json" -H "Content-Type: application/json" -X POST http://localhost:8080/api/admin/stores/npm/group
