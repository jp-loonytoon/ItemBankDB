#!/usr/bin/env python

import mariadb

conn = mariadb.connect(user="ngluser", password="wuwm1sumZagiosboo", host="127.0.0.1", database="NGLItemBank", port=33061)

def readCefrBandsFromDB(c):
   c.execute("SELECT cefr, min_theta, max_theta FROM cefrbands")
   cefrBandsDB = c.fetchall()
   cefrBands = {}

   for (cefr, min_theta, max_theta) in cefrBandsDB:
      cefrBands[cefr] = [ min_theta, max_theta ]

   return cefrBands


cur = conn.cursor()
bands = readCefrBandsFromDB(cur)

print(bands)

