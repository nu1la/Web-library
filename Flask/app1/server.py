from flask import Flask, render_template, request
from flaskext.mysql import MySQL

app = Flask(__name__)

#MySQL configuration
mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'password'
app.config['MYSQL_DATABASE_DB'] = 'library'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

def conn (request):
	con = mysql.connect()#create connection
	cursor = con.cursor()
	query = request
	cursor.execute(query)
	db_response = cursor.fetchall()
	return db_response

@app.route('/index.html', methods = ['GET'])
def index():
	query0 = 'show tables;'
	query1 = 'select * from books;'
	query2 = 'select * from readers;'
	query3 = 'select * from given_books;'
	return render_template('index.html', 
	raw0 = conn(query0), 
	raw1 = conn(query1), 
	raw2 = conn(query2), 
	raw3 = conn(query3))

@app.route('/task3_index.html', methods = ['GET'])
def task3():
	return render_template('task3/task3_index.html', raw = conn('select * from books where release_date>2018'))

@app.route('/task4_index.html', methods = ['GET'])
def task4_index():
	return render_template('task4/task4_index.html')


@app.route('/task4_full.html', methods = ['POST'])
def task4_full():
	query = 'select * from books where Author = \'' + str(request.form['author']) + '\''
	return render_template('task4/task4_full.html', raw = conn(query))

@app.route('/task5_index.html', methods = ['GET'])
def task5_index():
	return render_template('task5/task5_index.html')

@app.route('/task5_full.html', methods = ['POST'])
def task5_full():
	query = str(request.form['request'])
	return render_template('task5/task5_full.html', raw = conn(query))

if __name__ == '__main__':
	app.run(host = '127.0.0.1', port = '1337', debug = True)
