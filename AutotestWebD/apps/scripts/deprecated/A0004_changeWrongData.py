import pymysql
from apps.common.func.CommonFunc import replacedForIntoDB
# conn = pymysql.connect(host="127.0.0.1", user="root",password="Beike.2018", port=3306)
conn = pymysql.connect(host="10.26.9.107", user="sosotestTest",password="Beike.2018", port=3306)
conn.set_charset('utf8')
cursor = conn.cursor(pymysql.cursors.DictCursor)
sqlGet = "select id,varsPre,varsPost FROM sosotest_atplatform_test.tb_http_interface WHERE id <= 565"
cursor.execute(sqlGet)
data = cursor.fetchall()
# print(len(data))
finalSql = ""
for tmpData in data:
    id = tmpData["id"]
    varsPre = tmpData["varsPre"]
    varsPost = tmpData["varsPost"]
    # print(id)
    # print(varsPre)
    # print(varsPost)
    updateSql = "update sosotest_atplatform_release.tb_http_interface set varsPre='%s',varsPost='%s' where id =%s" % (replacedForIntoDB(varsPre),replacedForIntoDB(varsPost),id)
    # print(updateSql)
    finalSql+= updateSql+";\n"

# print("#############################################")
print(finalSql)
