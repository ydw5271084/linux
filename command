ls

命令名称：ls

命令英文原意：list

命令所在路径：/bin/ls

执行权限：所有用户

功能描述：显示目录文件

ls (显示当前目录下文件)

ls 目录名 (显示指定目录下文件)

ls -l (长格式显示目录文件)

ls -l 文件名 (长格式显示指定文件)

ls -a (显示所有文件(包含隐藏文件))

ls -al (长格式显示当前目录下所有文件)

ls -h (文件大小显示为常见大小单位 B KB MB ...)

ls -d (显示目录本身，而不是里面的子文件)



长格式显示项

-rw------- 1 root root 1190 08-10 23:37 anaconda-ks.cfg

① ② ③ ④ ⑤ ⑥ ⑦

第①项：权限位

第②项：引用计数

第③项：属主（所有者）

第④项：属组

第⑤项：大小

第⑥项：最后一次修改时间

第⑦项：文件名





cd

命令名称：cd

命令英文原意：change directory

命令所在路径：shell内置命令

执行权限：所有用户

功能描述：切换所在目录

cd /usr/local/src 切换到指定路径(使用绝对路径方式)

cd ~ 进入当前用户的家目录

cd - 进入上次目录

cd .. 进入上一级目录

cd . 进入当前目录

绝对路径：cd ../usr/local 参照当前所在目录，进行查找。一定要先确定当前所在目录。 相对路径：cd /usr/local 从根目录开始指定，一级一级递归查找。在任何目录下，都能进入指定位置。



pwd

命令名称：pwd

命令英文原意：print working directory

命令所在路径：/bin/pwd

执行权限：所有用户

功能描述：显示当前所在目录(当前工作目录)





Linux 常见目录



/ 根目录

/bin 命令保存目录（普通用户就可以读取的命令）

/boot 启动目录，启动相关文件

/dev 设备文件保存目录

/etc 配置文件保存目录

/home 普通用户的家目录

/lib 系统库保存目录

/mnt 系统挂载目录

/media 挂载目录

/root 超级用户的家目录

/tmp 临时目录

/sbin 命令保存目录（超级用户才能使用的目录）

/proc 直接写入内存的

/sys 将内核的一些信息映射，可供应用程序所用

/usr 系统软件资源目录

/usr/bin/ 系统命令（普通用户）

/usr/sbin/ 系统命令（超级用户）

/var 系统相关文档内容

/var/log/ 系统日志位置

/var/spool/mail/ 系统默认邮箱位置

/var/lib/ 默认安装的库文件目录





mkdir

命令名称：mkdir

命令英文原意：make directories

命令所在路径：/bin/mkdir

执行权限：所有用户

功能描述：建立目录

mkdir test 创建名为test的目录

mkdir -p test1/test2/test3 递归创建





rmdir

命令名称：rmdir

命令英文原意：remove empty directories

命令所在路径：/bin/rmdir

执行权限：所有用户

功能描述：删除目录 (只能删除空目录)

![](/assets/屏幕快照 2017-07-19 上午11.05.47.png)





文件操作命令





touch

命令名称：touch

命令所在路径：/bin/touch

执行权限：所有用户

功能描述：创建空文件 或 修改文件时间

touch test.py 创建空文件，如果文件存在，则修改文件创建时间



rm

命令名称：rm

命令英文原意：remove

命令所在路径：/bin/rm

执行权限：所有用户

功能描述：删除

rm 文件名 删除文件

rm -r 目录名 递归删除文件和目录

rm -f 文件名 强制删除

rm -rf 目录名 强制删除目录和文件



cat

命令名称：cat

命令所在路径：/bin/cat

执行权限：所有用户

功能描述：查看文件内容，从头到尾的内容。

cat 文件名 查看文件内容内容

cat -n 文件名 查看文件内容，并列出行号





more

命令名称：more

命令所在路径：/bin/more

执行权限：所有用户

功能描述：分屏显示文件内容

more 文件名 分屏显示文件内容

向上翻页 空格键

向下翻页 b键

退出查看 q键



head

命令名称：head

命令所在路径：/usr/bin/head

执行权限：所有用户

功能描述：显示文件头

head 文件名 显示文件头几行(默认显示10行)

head -n 20 文件名 显示文件前20行

head -n -20 文件名 显示文件最后20行

ctrl + c 强制终止查看模式

ctrl + l 清屏





ln

命令名称：ln

命令英文原意：link

命令所在路径：/bin/ln

执行权限：所有用户

功能描述：链接文件

等同于Windows中的快捷方式

新建的链接，占用不同的硬盘位置

修改一个文件，两边都会改变

删除源文件，软连接文件打不开

ln -s 源文件 目标文件 创建链接文件(文件名都必须写绝对路径)







文件和目录都能操作的命令





rm

删除文件或目录



cp

命令名称：cp

命令英文原意：copy

命令所在路径：/bin/cp

执行权限：所有用户

功能描述：复制文件或目录

cp 源文件 目标位置 (复制)

或

cp 源文件 目标位置/目标名称 (复制并改名)

cp -r 复制目录

cp -p 连带文件属性一起复制

cp -d 若源文件是链接文件，则复制链接属性

cp -a 相当于 cp -pdr

mv

命令名称：mv

命令英文原意：move

命令所在路径：/bin/mv

执行权限：所有用户



mv 源文件 目标位置

mv /root/test /tmp/ 将/root/下的test文件移动到/tmp/目录下

mv /root/test /root/newtest 将/root/下的test文件改名为newtest



权限管理



➤权限位



-rw-r--r--. 1 root root 44736 7月 18 00:38 install.log



➤权限位是十位



第一位：代表文件类型

- 普通文件

d 目录文件

l 链接文件

其他九位：代表各用户的权限

(前三位=属主权限u 中间三位=属组权限g 其他人权限o)

r 读 4

w 写 2

x 执行 1



➤权限意义



✦权限对文件的含义：

r：读取文件内容 如：cat、more、head、tail

w：编辑、新增、修改文件内容 如：vi、echo 但是不包含删除文件

x：可执行 /tmp/11/22/abc ---------



✦权限对目录的含义：

r：可以查询目录下文件名 如：ls

w：具有修改目录结构的权限 如：touch、rm、mv、cp

x：可以进入目录 如：cd



chmod

命令名称：chmod

命令英文原意：change the permissions mode of a file

命令所在路径：/bin/chmod

执行权限：所有用户

功能描述：修改权限

chmod u+x aa aa文件的属主加上执行权限

chmod u-x aa aa文件的属主减去执行权限

chmod g+w,o+w aa aa文件的属组和其他人加上写权限

chmod u=rwx aa aa文件的用户权限改为所有权限(读+写+执行)

另一种表现方式：

chmod 755 aa aa文件的属主权限是rwx，属组和其他人是rx

chmod 644 aa aa文件的属主权限是rw，属组和其他人是r



属主和属组命令chown

命令名称：chown

命令英文原意：change file ownership

命令所在路径：/bin/chown

执行权限：所有用户

功能描述：修改文件的属主或属组

chown 用户名 文件名 改变文件属主

chown user1 aa user1必须存在

chown user1:user1 aa 改变属主同时改变属组

用户操作

useradd 用户名 功能描述：添加用户

passwd 用户名 功能描述：设定用户密码







帮助命令



man

命令名：man

命令英文原意：manual

命令所在路径：/usr/bin/man

执行权限：所有用户

功能描述：查看命令的帮助



--help

命令名：--help

执行权限：所有用户

功能描述：查看命令的帮助







查找命令



whereis

命令名：whereis

命令名称：whereis

命令所在路径：/usr/bin/whereis

执行权限：所有用户

功能描述：查找命令的命令，同时看到帮助文档位置



find

命令名称：find

命令所在路径：/usr/bin/find

执行权限：所有用户

功能描述：搜索命令

find 查找位置 -name 文件名

find / -name aabbcc 查找/目录下名为 aabbcc的文件



更多选项：

-name 文件名 按照文件名查找

-user 用户名 按照属主用户名查找文件

-group 组名 按照属组组名查找文件

-nouser 找没有属主的文件 (除了这三个文件：/proc、/sys、/mnt/cdrom)

-size 按照文件大小k M 如：find / -size +50k

-type 按照文件类型查找(f=普通 d=目录 l=链接)

-perm 按照权限查找 如：find /root -perm 644

-iname 按照文件名查找，不区分大小写



grep

命令名称：grep

命令所在路径：/bin/grep

执行权限：所有用户

功能描述：查找符合条件的字串

grep 选项 '字串' 查找路径

grep -i "root" /etc/passwd

-v 反向选择

-i 忽略大小写

管道符 |

命令1 | 命令2 命令1的执行结果，作为命令2的执行条件

cat 文件名 | grep '字串' 提取含有字符串的行

ls -l /etc | more 分屏显示ls内容





压缩和解压缩



➤linux可以识别的常见压缩格式：.gz .bz2



➤常见的压缩和打包命令：.tar.gz .tar.bz2



➤压缩/解压 同时打包

tar -zcvf 压缩文件名 源文件

tar -zcvf aa.tar.gz aa

-z 识别.gz格式

-c 压缩

-v 显示压缩过程

-f 指定压缩包名

tar -zxvf 压缩文件名 解压缩同时解打包

tar -jcvf 压缩文件名 源文件 压缩同时打包

tar -jcvf aa.tar.bz2 aa

tar -jxvf aa.tar.bz2 解打包同时解压缩



查看不解包

tar -ztvf aa.tar.gz 查看不解压

tar -jtvf aa.tar.bz2

-t 只查看，不解压

tar -jxvf root.tar.bz2 -C /tmp/ 指定解压缩位置





关机和重启命令



shutdown

命令名称：shutdown

命令所在路径：/sbin/shutdown

执行权限：root

功能描述：关机/重启

shutdown -h now 没有特殊情况，使用此命令

-h 关机

-r 重启



reboot

命令名称：reboot

命令所在路径：/sbin/reboot

执行权限：root

功能描述：关机/重启挂载

挂载命令



mount

命令名称：mount

命令所在路径：/bin/mount

执行权限：所有用户

功能描述：挂载

linux所有存储设备都必须挂载使用，包括硬盘



光盘挂载

/dev/sda1 第一个scsi硬盘的第一分区

/dev/cdrom 光盘

/dev/hdc IDE硬盘 centos 5.5

/dev/sr0 光盘 centos 6.x

mount -t 文件系统 设备描述文件 挂载点（已经存在空目录）

mount -t iso9660 /dev/cdrom /mnt/cdrom

光盘卸载

umount /dev/cdrom

umount /mnt/cdrom 注意：退出挂载目录，才能卸载

fdisk -l 查看设备名

mount -t vfat /dev/sdb1 /mnt/usb





网络命令



ping

命令名称：ping

命令所在路径：/bin/ping

执行权限：所有用户

功能描述：测试网络畅通性

ping -c 次数 ip 探测网络通畅



ifconfig

命令名称：ifconfig

命令英文原意：interface configure

命令所在路径：/sbin/ifconfig

执行权限：root

功能描述：查询本机网络信息
