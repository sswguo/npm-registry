INDY_VERSION="2.0-SNAPSHOT"

echo "Indy version: $INDY_VERSION"

echo "[1/4] Clear workspace... " 
rm -rf indy*

echo "[2/4] Copy tar ..."
cp ~/GitRepo/indy/deployments/launcher/target/indy-launcher-$INDY_VERSION-complete.tar.gz ./

echo "[3/4] Untar the source ..."
sleep 2
tar -xvf indy-launcher-$INDY_VERSION-complete.tar.gz

cp -i  ~/tmp/logback.xml indy/etc/indy/logging/

echo "[Storage] Setup/recreate cassandra container"
CONTAINERID="$(docker ps --no-trunc -aqf name=indy_storage)"
echo "Cassandra container: ${CONTAINERID}"
docker stop ${CONTAINERID}
docker rm ${CONTAINERID}
docker run --name indy_storage -p 9042:9042 -d cassandra:latest
echo "Cassandra container is ready."

echo "[4/4] Start the app in 5s ..."
sleep 5
indy/bin/indy.sh
