import json
from pandas import *

# load data

df = DataFrame(json.load(open('data/fixtures.json')))

# extract fields

fields = DataFrame(df['fields'].tolist())
