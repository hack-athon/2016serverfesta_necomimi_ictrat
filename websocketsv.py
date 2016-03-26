import tornado.ioloop
import tornado.web
import tornado.websocket
import sqlite3
import json

cl = []

class WebSocketHandler(tornado.websocket.WebSocketHandler):
    def open(self):
        if self not in cl:
            cl.append(self)

    def on_message(self, message):
        #for client in cl:
            #client.write_message(message)
        '''
        write_sql3
        '''
        json_data = json.loads(str(message))
        db = sqlite3.connect("hoge.db")
        cur = db.cursor()
        cur_a = db.execute("SELECT * FROM sqlite_master WHERE type='table' and name='eggdata'")
        if cur_a.fetchone() == None:
            cur.execute("create table eggdata(year integer,mon integer,day integer,hour integer,min integer,sec integer,delta integer,theta integer,lowalpha integer,highalpha integer,lowbeta integer,highbeta integer,lowgamma integer,midgamma integer,meditation integer,attention integer)")

        db.commit()

        cur.execute("insert into eggdata values (?,?,?,?,?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", (json_data['year'],json_data['mon'],json_data['day'],json_data['hour'],json_data['min'],json_data['sec'],json_data['delta'],json_data['theta'],json_data['lowalpha'],json_data['highalpha'],json_data['lowbeta'],json_data['highbeta'],json_data['lowgamma'],json_data['midgamma'],json_data['meditation'],json_data['attention'],))

        cur.execute("select * from eggdata")
        for row in cur:
            print(row)
        db.commit()
        cur.close()
        db.close()
    def on_close(self):
        if self in cl:
            cl.remove(self)

class MainHandler(tornado.web.RequestHandler):
    def get(self):
        self.render('test_ws.html')

application = tornado.web.Application([
    (r"/", MainHandler),
    (r"/websocket", WebSocketHandler),
])

if __name__ == "__main__":
    application.listen(9090)
    tornado.ioloop.IOLoop.current().start()