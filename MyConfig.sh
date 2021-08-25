cd /www/wwwroot
yes | cp /www/wwwroot/MyConfig/qiandao/setup.json /www/wwwroot/qiandao/setup.json
cd /www/wwwroot/MyConfig
git add NovelNotice/setup.json
git add MyConfig.sh
git commit -m "$(date +"%Y-%m-%d %H:%M:%S")"
git push -u origin master

cd /www/wwwroot/qiandao
rm -rf setup.json
wget -c https://cdn.jsdelivr.net/gh/goodyaoshi/MyConfig@master/qiandao/setup.json
cd /www/wwwroot/NovelNotice
rm -rf setup.json
wget -c https://cdn.jsdelivr.net/gh/goodyaoshi/MyConfig@master/NovelNotice/setup.json

