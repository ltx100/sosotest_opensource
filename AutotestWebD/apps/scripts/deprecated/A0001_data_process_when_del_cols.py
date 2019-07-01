
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
    envkeyList = []
    sql = "SELECT httpConfKey FROM tb_config_http ;"
    envList = executeSqlGetDict(sql)
    for index in envList:
        envkeyList.append(index["httpConfKey"])
    #[CONF=common]comment[ENDCONF][CONF=test1db]test1[ENDCONF][CONF=test2db]test2[ENDCONF]
    # tableList = ["tb_http_interface","tb_http_testcase_step","tb2_dubbo_interface","tb2_dubbo_testcase_step"]
    tableList = ["tb_version_http_interface", "tb_version_http_testcase_step"]
    for tmpTableName in tableList:
        sql = "select id,varsPre,dataInit,varsPost,expectResult,dataRecover from %s" % tmpTableName
        interfaceList = executeSqlGetDict(sql)
        for tmpInterface in interfaceList:
            vars = tmpInterface['varsPre']
            startTag = "[CONF=common]"
            endTag = "[ENDCONF]"
            varsPreString1 = get_sub_string(vars, startTag, endTag).strip() \
                if get_sub_string(vars, startTag, endTag).strip() == "" or get_sub_string(vars, startTag, endTag).strip()[-1]==";" \
                else get_sub_string(vars, startTag, endTag).strip()+";"

            for tmpEnvKey in envkeyList:
                startTag = "[CONF=%s]" % tmpEnvKey
                endTag = "[ENDCONF]"
                if get_sub_string(vars, startTag, endTag).strip() != "":
                    varsPreString1 += "\n%s;" % get_sub_string(vars, startTag, endTag).strip()

            if tmpInterface['dataInit'].strip() != "":
                varsPreString1 += "\n%s;" % tmpInterface['dataInit'].strip()

            vars = tmpInterface['varsPost']
            startTag = "[CONF=common]"
            endTag = "[ENDCONF]"
            varsPostString1 = get_sub_string(vars, startTag, endTag).strip() \
                if get_sub_string(vars, startTag, endTag).strip() == "" or get_sub_string(vars, startTag, endTag).strip()[-1]==";" \
                else get_sub_string(vars, startTag, endTag).strip()+";"

            for tmpEnvKey in envkeyList:
                startTag = "[CONF=%s]" % tmpEnvKey
                endTag = "[ENDCONF]"
                if get_sub_string(vars, startTag, endTag).strip() != "":
                    varsPostString1 += "\n;" + get_sub_string(vars, startTag, endTag).strip()

            expectResultList = splitStringToListByTag(tmpInterface['expectResult'], ";")
            for tmpExpectResult in expectResultList:
                if tmpExpectResult.strip() != "":
                    varsPostString1 += "\nASSERT(%s);" % tmpExpectResult.strip()

            if tmpInterface['dataRecover'].strip() != "":
                varsPostString1 += "\n%s;" % tmpInterface['dataRecover'].strip()

            sqlUpdate = "UPDATE %s SET varsPre='[CONF=common]%s[ENDCONF]',dataInit='',varsPost='[CONF=common]%s[ENDCONF]',expectResult='',dataRecover='' where id=%s " \
                        % (tmpTableName,replacedForIntoDB(varsPreString1),replacedForIntoDB(varsPostString1),tmpInterface['id'])
            print(sqlUpdate)
            cursor = connection.cursor()
            cursor.execute(sqlUpdate)






