#!/usr/bin/python
import MySQLdb

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

if __name__ == "__main__":
    samplePyFunction(req)
