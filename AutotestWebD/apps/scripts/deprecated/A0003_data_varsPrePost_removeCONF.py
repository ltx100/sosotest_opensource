
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





if __name__ == "__main__":
    #[CONF=common]comment[ENDCONF][CONF=test1db]test1[ENDCONF][CONF=test2db]test2[ENDCONF]
    tableList = ["tb_http_interface","tb_http_testcase_step","tb2_dubbo_interface","tb2_dubbo_testcase_step"]
    # tableList = ["tb_http_interface"]
    for tmpTableName in tableList:
        sql = "select id,varsPre,varsPost from %s" % tmpTableName
        interfaceList = executeSqlGetDict(sql)
        for tmpInterface in interfaceList:
            varsPre = tmpInterface['varsPre']
            startTag = "[CONF=common]"
            endTag = "[ENDCONF]"
            varsPreString1 = get_sub_string(varsPre, startTag, endTag).strip()

            varsPost = tmpInterface['varsPost']
            startTag = "[CONF=common]"
            endTag = "[ENDCONF]"
            varsPostString1 = get_sub_string(varsPost, startTag, endTag).strip()

            if startTag in varsPre or startTag in varsPost:
                sqlUpdate = "UPDATE %s SET varsPre='%s',varsPost='%s' where id=%s " % (tmpTableName,replacedForIntoDB(varsPreString1),replacedForIntoDB(varsPostString1),tmpInterface['id'])
                print(sqlUpdate)
                cursor = connection.cursor()
                cursor.execute(sqlUpdate)






