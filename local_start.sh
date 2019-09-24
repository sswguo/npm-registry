INDY_VERSION="1.9.5-SNAPSHOT"

echo "Indy version: $INDY_VERSION"

echo "[1/4] Clear workspace... " 
rm -rf indy*

echo "[2/4] Copy tar ..."
cp ~/GitRepo/indy/deployments/launcher/target/indy-launcher-$INDY_VERSION-complete.tar.gz ./

echo "[3/4] Untar the source ..."
sleep 2
tar -xvf indy-launcher-$INDY_VERSION-complete.tar.gz

echo "[4/4] Start the app in 2s ..."
sleep 2
indy/bin/indy.sh
