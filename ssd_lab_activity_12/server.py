from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_login import *

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///user.db'
app.config['SECRET_KEY'] = 'passkey'

db = SQLAlchemy(app)
login_manager = LoginManager()

login_manager.init_app(app)

class User(UserMixin, db.Model):
    uname = db.Column(db.String(50), primary_key=True)
    email = db.Column(db.String(100), unique=True, nullable=True)
    pswd = db.Column(db.String(100), nullable=True)

@login_manager.user_loader
def load_user(uname):
    return User.query.get(uname)

def test_connection(self):
    with app.app_context():
        db.create_all()

@app.route('/do_signin',methods = ['POST'])
def do_signin():
    if(request.method=='POST'):
        req = request.get_json()
        uname = req['uname']
        pswd = req['pswd']
        check_user = User.query.filter_by(uname = uname).first()
        if(check_user is not None):
            if(check_user.pswd == pswd):
                login_user(check_user)
                return "Login successful"
            else:
                return "Pswd is incorrect"
        else:
            return "No such user"

@app.route('/user/signup', methods = ['POST'])
def do_signup():
    if(request.method == 'POST'):
        req = request.get_json()
        uname = req['uname']
        email = req['email']
        pswd = req['pswd']
        obj = User(uname=uname,email=email,pswd=pswd)
        db.session.add(obj)
        db.session.commit()
        return "Registration successful"
    else:
        return "Registration unsuccessful"

@app.route('/user/signout')
def do_logout():
    session.clear()
    return redirect(url_for('home'))


# print("1-Register, 2-Login, 3-Logout")
# choice=int(input())
# if choice==1:
#     do_signup()
# elif choice==2:
#     do_signin()
# else:
#     do_logout()
