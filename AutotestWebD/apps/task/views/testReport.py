from django.shortcuts import HttpResponse
from apps.common.func.CommonFunc import *


def testreport(request,file):
    realFile = "%s/%s" % (reportsRoot,file)
    fileContent = open(realFile,"r",encoding="utf-8")
    try:
        file_context = fileContent.read()
    finally:
        fileContent.close()
    return HttpResponse(file_context)

