#!/bin/bash
echo "Phoneix_OS刺激战场过检测脚本,Created_By:Beavan.."
echo "此脚本仅适用于Phoenix_OS,其他模拟器效果未知,慎用.."
#read -p "确认模拟器是否为Phoeix_OS,"
echo "正在备份原始文件..."
/bin/cp /system/build.prop /system/build.prop.bak
/bin/cp /system/etc/init.sh /system/etc/init.sh.bak
echo "备份完成.."
echo "远程下载过检测文件.."
wget http://github.com/Beavan/phoeix_os/file/build.prop
wget http://github.com/Beavan/phoeix_os/file/init.sh

