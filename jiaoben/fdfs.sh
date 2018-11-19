#/bin/bahs
case "$1" in
  stop)
    /etc/init.d/fdfs_trackerd stop
    /etc/init.d/fdfs_storaged stop
    pkill -9 nginx
    ;;
  start)
    /etc/init.d/fdfs_trackerd start
    /etc/init.d/fdfs_storaged start
    /etc/init.d/nginx
    ;;
  restart)
    /etc/init.d/fdfs_trackerd stop
    /etc/init.d/fdfs_storaged stop
    pkill -9 nginx
    /etc/init.d/fdfs_trackerd start
    /etc/init.d/fdfs_storaged start
    /etc/init.d/nginx
    ;;
  *)
    echo "The command $1 is not supported"
    ;;
esac
