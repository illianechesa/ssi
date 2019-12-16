import wfuzz

s = wfuzz.FuzzSession(url="http:/testphp.vulnweb.com/FUZZ")

for r in s.fuzz(hc=[404], payloads=[("file", dict(fn="../wfuzz.code/wordlist/general/common.txt"))]):
    print(r)
