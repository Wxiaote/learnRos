########################################################
###2018_10_20 ###
##gdou##  #
##make_haizhou###
##function:install the ros_indigo for the ubuntu 16.04
#######################################################
##how to use it?
## $chomd 775 ros_indigo_install .sh
## $bash ./ros_indigo.sh
########################################################


# 更新源文件
# sudo apt-get update
#while [$? -ne 0]
#do 
#	echo "安装出错，10秒后重新安装"
#	sleep 10
#	sudo apt-get update
#done
# 更新
#sudo apt-get upgrade -y
#while [$? -ne 0]
#do 
#        echo "安装出错，10秒后重新安装"
#        sleep 10
#        sudo apt-get upgrade -y
#done


# 设置ROS 源
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
#添加ROS_key
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# 更新源文件
 sudo apt-get update && sudo  apt-get upgrade -y
while [$? -ne 0]
do
        echo "更新安装出错，20秒后重新安装"
        sleep 20
        sudo apt-get update && sudo apt-get upgrade -y
done
#桌面版
sudo apt-get install ros-indigo-desktop-full -y
while [$? -ne 0]
do
        echo "安装桌面版ros出错，20秒后重新安装"
        sleep 20
        sudo apt-get install ros-indigo-desktop-full -y
done
#初始化
sudo rosdep init
rosdep update
while [$? -ne 0]
do
        echo "初始化出错，20秒后重新初始化"
        sleep 20
        rosdep update
done
source /opt/ros/indigo/setup.bash
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
echo "###gdou_326_haizhou###" >> ~/.bashrc
sudo apt-get install python-rosinstall -y
while [$? -ne 0]
do
        echo "初始化出错，20秒后重新初始化"
        sleep 20
	sudo apt-get install python-rosinstall  -y
done

echo "****欢迎使用GDOU_326_haixin  欢迎入坑****** "
echo  "**安装成功，即将退出安装驱动文件**" && exit
