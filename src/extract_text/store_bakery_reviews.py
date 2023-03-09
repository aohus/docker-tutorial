# import pymongo
import tqdm
import json
import pandas as pd
import datetime
import pymongo

with open('../../data/bakery.json', 'r') as f:
    r = json.load(f)

mongo = pymongo.MongoClient()
for line in tqdm.tqdm(r):
    if line:
        line['작성날짜'] = datetime.datetime.strptime(line['작성날짜'], '%Y.%m.%d. %H:%M').isoformat()
        line['_timestamp'] = datetime.datetime.utcnow().isoformat()
        mongo.bakery.sample.insert_one(line)