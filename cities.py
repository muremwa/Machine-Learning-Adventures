import pymysql


cities = []
countries = []


conn = pymysql.connect(host="localhost", user="python", password="python", db="world")
my_cursor = conn.cursor()

query = """SELECT DISTINCT countrycode, count(name) as 'number of cities' from city group by countrycode"""

my_cursor.execute(query)

results = my_cursor.fetchall()

for result in results:
    countries.append(result[0])
    cities.append(result[1])

print(len(cities))
print(len(countries))


conn.close()
