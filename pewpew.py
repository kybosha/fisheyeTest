import requests, time
# do stuff
r = requests.post('https://requestb.in/1ao03v21', data={"ts":time.time()})
print r.status_code
print r.content
