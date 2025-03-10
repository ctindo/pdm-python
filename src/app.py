from flask import Flask, render_template, request

from bs4 import BeautifulSoup
import numpy as np
import pandas as pd
import spacy

app = Flask(__name__)

@app.route('/')
def index():
	return render_template('index.html')

if __name__ == '__main__':
	app.run(debug=True)
