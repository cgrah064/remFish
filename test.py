#!/usr/bin/python
import MySQLdb
import subprocess

def samplePyFunction(req):
    postData = req.form
    database = 'fishDb'
    table = str(postData['tableName'].value) 
    curQuery = str(postData['currentQuery'].value)
    htmlStr = ''
    host = '192.168.0.22'
    user = 'root'
    password = 'fish'
    htmlStr += '<table>'
    htmlStr += '<tr>'
    conn = MySQLdb.Connection(db=database, host=host, user=user, passwd=password)
    mysql = conn.cursor()
    mysql.execute(curQuery)
    fields = mysql.fetchall()
    for field in fields:
        for i in range(0, len(field)):
            htmlStr += '<td>'+str(field[i])+'</td>'
        htmlStr += '</tr>'
    htmlStr += '</table>'
    return htmlStr

def setMotion01(req):
    postData = req.form
    motion01 = str(postData['motion01'].value)
    htmlStr = '<p>motion01 was '+str(motion01)+'</p>'
    if motion01 == '1':
        subprocess.call('pyMotionStart.sh')
    else:
        subprocess.call('pyMotionStop.sh')
    return htmlStr

def getMotion01
    output = subprocess.check_output(['ps', '-A'])
    if 'motion' in output:
        return '<div>Motion is running</div>'
    else:
        return '<div>Motion is not running</div>'

if __name__ == "__main__":
    samplePyFunction(req)
