from flask import Flask, render_template, request
from flaskext.mysql import MySQL

app = Flask(__name__)

#MySQL configuration
mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'reader'
app.config['MYSQL_DATABASE_PASSWORD'] = 'password_0'
app.config['MYSQL_DATABASE_DB'] = 'lib_db'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

output = []

@app.route('/index.html', methods = ['POST', 'GET'])
def index():
	#main
	if request.method == 'POST':
		con = mysql.connect()#create connection
		cursor = con.cursor()
		query = 'select * from births where id = ' + str(request.form['test'])
		cursor.execute(query)
		db_response = cursor.fetchall()
		#tmp = ()
		'''		
		for item in db_response:
			tmp = ('Number: ' + str(item[0]),
			'Name: ' + item[1],
			'Bday: ' + str(item[2]))
			output.append(tmp)'''
		
	else:
		db_response = 'test'
	return render_template('index.html', raw = db_response)

if __name__ == '__main__':
	app.run(host = '127.0.0.1', port = '1337', debug = False)
