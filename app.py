from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
@app.route('/index.html')
def index():
    return render_template('index.html', the_title='Ana Sayfa')

@app.route('/sayfa1.html')
def sayfa1():
    return render_template('sayfa1.html', the_title='Sayfa 1')

@app.route('/sayfa2.html')
def sayfa2():
    return render_template('sayfa2.html', the_title='Sayfa 2')

if __name__ == '__main__':
    app.run()
