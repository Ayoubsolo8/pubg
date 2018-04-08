#!/bin/bash
echo -e "\e[0;31m Phoneix_OS刺激战场过检测脚本,Created_By:Beavan..\e[0m"
echo -e "\e[0;31m 游戏ID:Beavan,Bevay,见面请留情.. \e[0m"
echo -e "\e[0;31m 此脚本仅适用于Phoenix_OS,其他模拟器效果未知,慎用.. \e[0m"
echo -e "\e[0;31m 脚本将在5秒之后执行,如结束执行请Ctrl+C退出..\e[0m"
sleep 5
echo -e "\e[0;34m 正在备份原始文件...\e[0m"
if [ -f /system/build.prop.bak ] ; then
	echo -e "\e[0;34m 文件buil.prop.bak已经存在,备份跳过.. \e[0m"
else
	/system/bin/cp /system/build.prop /system/build.prop.bak
	echo -e "\e[0;34m 文件buil.prop备份完成..\e[0m"
fi
if [ -f /system/etc/init.sh.bak ] ; then
	echo -e "\e[0;34m 文件init.sh.bak已经存在,备份跳过.. \e[0m"
else
	/system/bin/cp /system/etc/init.sh /system/etc/init.sh.bak
	echo -e "\e[0;34m 文件init.sh备份完成.. \e[0m"
fi
echo -e "\e[0;34m 远程下载过检测文件..\e[0m"
#cd /tmp && rm -rf build.prop init.sh
cd /sdcard/Download && rm -rf build.prop init.sh
wget -q -O build.prop  https://raw.githubusercontent.com/Beavan/pubg/master/phoenix_os/file/build.prop
wget -q -O init.sh https://raw.githubusercontent.com/Beavan/pubg/master/phoenix_os/file/init.sh
echo -e "\e[0;34m 文件下载完成.. \e[0m"
echo -e "\e[0;34m 文件修改中.... \e[0m"
/system/bin/cp build.prop /system/build.prop
/system/bin/cp init.sh /system/etc/init.sh
echo -e "\e[0;34m 修改文件权限..\e[0m"
chmod 644 /system/build.prop
chmod 755 /system/etc/init.sh
echo -e "\e[0;31m 修改完成,请重启系统后进入游戏，进入游戏前,先清理游戏数据..\e[0m"
read -p " 是否重启电脑,重启输入yes,否则按任意键退出:" answer
if [ -z $answer ] ; then
	exit
elif [ $answer == "yes" ] ; then
	reboot
else
	exit
fi
