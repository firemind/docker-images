cd /root/magarena
if [ $(git pull | grep -v "Already up-to-date." | wc -l) -gt 0 ];then
  ant clean
  ant
fi
echo firemindAccessToken=$ACCESSTOKEN > release/Magarena/general.cfg
cd release
java -noverify -cp Magarena.jar magic.FiremindQueueWorker
