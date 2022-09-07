#* first make the directory
#* py-3 -m venv flask
#*flask/scripts/activate

#! in case of any error
#* open powershell with admin access
#*'set-executionpolicy remotesigned'
#* then write 'A' then enter
#? try again aboove process


from flask import Flask, request, jsonify
app= Flask(__name__)


@app.route("/", methods=["POST"])
def home():
    reqObj = request.get_json() 
    print(f"Name is {reqObj['name']}")
    return jsonify(reqObj)

@app.route("/store", methods=["POST"])
def homenew():
    reqObj = request.get_json() 
    print(f"Before {reqObj['name']}")
    return jsonify(reqObj)

app.run(debug=True, port=5000)