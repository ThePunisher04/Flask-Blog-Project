from flask import Flask, render_template
app = Flask(__name__)

@app.route("/")
def hello():
    return render_template("index1.html")


@app.route("/about")
def vats():
    name = "Vatsalya"
    return render_template("about1.html", name_of_person = name)

# name_of_person is taken from template, name is taken from python

#app.run()
app.run(debug=True)