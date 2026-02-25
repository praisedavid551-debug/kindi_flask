#import flask
from flask import*
import pymysql
import os 

#create an instance/create/instantiate Flask app

app=Flask(__name__)
@app.route("/api/signup",methods=["POST"])
def signup():
    username=request.form["username"]
    
    password=request.form["password"]
    email=request.form["email"]
    phone=request.form["phone"]


    #print(username,password,email,phone)
    #connecting to the db
    connection=pymysql.connect(host="localhost",user="root",password="",database="kindisokogarden")
    #create a cursor that will execute queries with
    cursor=connection.cursor()

    sql="insert into users (username,password,email,phone) values (%s,%s,%s,%s)"
    #prepare our data
    data=(username,password,email,phone)
    cursor.execute(sql,data)
    #commit-ensures that data is saved in a storage/table
    connection.commit()

    return jsonify({"message":"Thank you for joining"})

#product details
@app.route("/api/addproducts",methods=["POST"])
def addproducts():
    product_name=request.form["product_name"]
    product_cost=request.form["product_cost"]
    product_description=request.form["product_description"]
    product_photo=request.files["product_photo"]

    filename=product_photo.filename
    photo_path=os.path.join("static/images",filename)
    product_photo.save(photo_path)

    #connecting to the db
    connection=pymysql.connect(host="localhost",user="root",password="",database="kindisokogarden")
    #create a cursor that will execute queries with
    cursor=connection.cursor()

    sql="insert into product_details (product_name,product_cost,product_description,product_photo) values (%s,%s,%s,%s)"
    #prepare our data
    data=(product_name,product_cost,product_description,filename)
    cursor.execute(sql,data)

    #commit-ensures that data is saved in a storage/table
    connection.commit()

    return jsonify({"message":"Product added successfully"})


#Get products
@app.route("/api/get_products_details")
def get_products_details():
    connection=pymysql.connect(host="localhost",user="root",password="",database="kindisokogarden")
    cursor=connection.cursor(pymysql.cursors.DictCursor)
    sql="select * from product_details"
    cursor.execute(sql)

    product_details=cursor.fetchall()
    return jsonify(product_details)

# Mpesa Payment Route 
import requests
import datetime
import base64
from requests.auth import HTTPBasicAuth
 
@app.route('/api/mpesa_payment', methods=['POST'])
def mpesa_payment():
    if request.method == 'POST':
        amount = request.form['amount']
        phone = request.form['phone']
        # GENERATING THE ACCESS TOKEN
        # create an account on safaricom daraja
        consumer_key = "GTWADFxIpUfDoNikNGqq1C3023evM6UH"
        consumer_secret = "amFbAoUByPV2rM5A"
 
        api_URL = "https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials"  # AUTH URL
        r = requests.get(api_URL, auth=HTTPBasicAuth(consumer_key, consumer_secret))
 
        data = r.json()
        access_token = "Bearer" + ' ' + data['access_token']
 
        #  GETTING THE PASSWORD
        timestamp = datetime.datetime.today().strftime('%Y%m%d%H%M%S')
        passkey = 'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919'
        business_short_code = "174379"
        data = business_short_code + passkey + timestamp
        encoded = base64.b64encode(data.encode())
        password = encoded.decode('utf-8')
 
        # BODY OR PAYLOAD
        payload = {
            "BusinessShortCode": "174379",
            "Password": "{}".format(password),
            "Timestamp": "{}".format(timestamp),
            "TransactionType": "CustomerPayBillOnline",
            "Amount": "1000",  # use 1 when testing
            "PartyA": phone,  # change to your number
            "PartyB": "174379",
            "PhoneNumber": phone,
            "CallBackURL": "https://modcom.co.ke/api/confirmation.php",
            "AccountReference": "account",
            "TransactionDesc": "account"
        }
 
        # POPULAING THE HTTP HEADER
        headers = {
            "Authorization": access_token,
            "Content-Type": "application/json"
        }
 
        url = "https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest"  # C2B URL
 
        response = requests.post(url, json=payload, headers=headers)
        print(response.text)
        return jsonify({"message": "Please Complete Payment in Your Phone and we will deliver in minutes"})

if __name__=='__main__':
    app.run(debug=True)
          