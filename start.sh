cd /root
process=`ps aux | grep "proxy_server" | grep -v grep | awk '{print $2}'`
if [ "$process" != "" ]; then
  kill -9 "${process}"
fi
if [ ! -f "/root/proxy_server" ]; then
  wget https://github.do/https://github.com/smalls0098/proxy-server-demo/releases/download/0.1.0/linux_amd64_proxy_server
  mv linux_amd64_proxy_server proxy_server
  chmod +x proxy_server
fi
nohup ./proxy_server &