import json
import jsonpath

def read_locator_from_json(locatoname):
    f = open('C:/Users/TestingWorld/PycharmProjects/RobotAutomation/JsonFiles/Elements.json','r')
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response,locatoname)
    return value[0]
