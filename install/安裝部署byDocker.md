# 1、下载sosotest源码
从git上下载sosotest_opensource源码：可以通过git clone 下载（如果你已装git）；也可以通过下载tar包，本地解压<br>
# 2、安装docker
步骤可以自行google
# 3、安装步骤

1、切换到项目目录
```
cd sosotest_opensource
```
2、【可选】个性化配置文件<br>
对应install文件夹下设置相应的个性化配置<br>
3、build镜像并启动容器
```
docker-compose up -d
```
4、第一次启动容器需要初始化数据库
```
进入容器：
sosotest-docker-compose [master] ⚡  docker exec -it mysosotest /bin/bash
```
```
执行初始化数据命令：
python ./AutotestWebD/manage.py migrate && \
python ./AutotestWebD/apps/scripts/initial/A0000_init_myadmin_account.py && \
python ./AutotestWebD/apps/scripts/initial/A0000_init_myadmin_add_adminManagePermissionData.py && \
python ./AutotestWebD/apps/scripts/initial/A0000_init_tb_exec_python_attrs.py && \
python ./AutotestWebD/apps/scripts/initial/A0000_init_sources.py && \
python ./AutotestWebD/apps/scripts/initial/A0001_init_permission_data.py

```
5、浏览器访问http://localhost:8080/myadmin<br>

