import django
import sys,os
rootpath = os.path.dirname(os.path.realpath(__file__)).replace("\\","/")
rootpath = rootpath.split("/apps")[0]
# print(rootpath)
syspath=sys.path
sys.path=[]
sys.path.append(rootpath) #指定搜索路径绝对目录
sys.path.extend([rootpath+i for i in os.listdir(rootpath) if i[0]!="."])#将工程目录下的一级目录添加到python搜索路径中
sys.path.extend(syspath)


from datetime import datetime
from apps.common.config import commonWebConfig
from apps.common.func.WebFunc import *

#修复tb_task tb_task_execute的新增字段addByName modByName execByName httpConfKeyAlias
if __name__ == "__main__":
    tbUserList = TbUser.objects.all()
    for tmpData in tbUserList:
        sql="update tb_task set addByName='%s' where addBy='%s'" % (tmpData.userName,tmpData.loginName)
        cursor = connection.cursor()
        cursor.execute(sql)
        sql = "update tb_task set modByName='%s' where modBy='%s'" % (tmpData.userName, tmpData.loginName)
        cursor = connection.cursor()
        cursor.execute(sql)
        sql = "update tb_task_execute set addByName='%s' where addBy='%s'" % (tmpData.userName, tmpData.loginName)
        cursor = connection.cursor()
        cursor.execute(sql)
        sql = "update tb_task_execute set modByName='%s' where modBy='%s'" % (tmpData.userName, tmpData.loginName)
        cursor = connection.cursor()
        cursor.execute(sql)
        sql = "update tb_task_execute set execByName='%s' where execBy='%s'" % (tmpData.userName, tmpData.loginName)
        cursor = connection.cursor()
        cursor.execute(sql)

    allHttpConfList = TbConfigHttp.objects.all()
    for tmpData in allHttpConfList:
        sql = "update tb_task_execute set httpConfKeyAlias='%s' where httpConfKey='%s'" % (tmpData.alias, tmpData.httpConfKey)
        cursor = connection.cursor()
        cursor.execute(sql)
    print("FINISHED!!!!")