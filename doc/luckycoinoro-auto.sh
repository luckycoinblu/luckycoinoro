#!/bin/bash
wget "https://github.com/luckycoinblu/luckycoinoro/releases/download/v1.0.0/luckycoinoro-qt-linux.tar.gz" -O luckycoinoro-qt-linux.tar.gz

mkdir $HOME/Desktop/LuckyCoinORO

tar -xzvf luckycoinoro-qt-linux.tar.gz --directory $HOME/Desktop/LuckyCoinORO

mkdir $HOME/.luckycoinoro

cat << EOF > $HOME/.luckycoinoro/luckycoinoro.conf
rpcuser=rpc_luckycoinoro
rpcpassword=dR2oBQ3K1zYMZQtJFZeAerhWxaJ5Lqeq9J2
rpcbind=0.0.0.0
rpcallowip=127.0.0.1
listen=1
server=1
addnode=node.oroworld.info
addnode=95.217.183.167
addnode=node1.walletbuilders.com
EOF

cat << EOF > $HOME/Desktop/LuckyCoinORO/start_wallet.sh
#!/bin/bash
SCRIPT_PATH=\`pwd\`;
cd \$SCRIPT_PATH
./luckycoinoro-qt
EOF

chmod +x $HOME/Desktop/LuckyCoinORO/start_wallet.sh

exec $HOME/Desktop/LuckyCoinORO/luckycoinoro-qt &

sleep 15

cd $HOME/Desktop/LuckyCoinORO/
