from flask import *
#$initialising/creating flask app
app=Flask(__name__)

#routing which should start with a a slash in quotes "/"
@app.route("/api/home")
def home():
    return jsonify({"message":"Welcome to HOME API!"})

@app.route("/api/products")
def products():
   return jsonify({"message":"Welcome to Products API!"})

@app.route("/api/about")
def about():
   return jsonify({"message":"Welcome to About API!"})

@app.route("/api/sum")
def sum():
   num1=29
   num2=56
   sum=num1+num2
   return jsonify({"Answer":sum})

@app.route("/api/calc",methods=["POST"])
def calc():
   number1=request.form["Number 1"]
   number2=request.form["Number 2"]
   sum=int(number1)+int(number2)
   return jsonify({"Answer":sum})

@app.route("/api/multiply")
def multiply():
   num1=request.form["num1"]
   num2=request.form["num2"]
   muliplication=int(num1)*int(num2)
   return jsonify({"Answer":muliplication})

if __name__=='__main__':
  app.run(debug=True)
