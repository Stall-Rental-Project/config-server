conn=`cat db_connection_dev.txt`
echo "Start time: `date`"
psql "$conn" -f cloud-config-dev.sql
echo "End time: `date`"

