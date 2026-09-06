import re
s=input("enter pattern to check:")
m=re.match(s,"abaaab")
if m!=None:
    print("match is available:")
    print(m.start(),m.end())
else:
    print("not available!")
    

m=re.fullmatch(s,"abaaabab")
if m!=None:
    print("pattern is same as target string")
    print(m.start(),m.end())
else:
    print("not available!")
    

m=re.search(s,"abaaababcc")
if m!=None:
    print("pattern available at anywhere in string!")
    print(m.start(),m.end())
else:
    print("not available!")


import re
text = "Phone: 123-456-7890"
result = re.subn(r'\d', '#', text)
print(result)
result = re.subn(r'\d', '*', text)
print(result)

import re
text = "apple,banana;orange-grape"
result = re.split(r'\W+', text)
print(result)


pattern = r'^[a-zA-Z0-9._%+-]+@gmail\.com$'
emails=['siddhu@gmail.com','siddhartha@gmail.com','siddhu@yahoo.com',
        'ksiddhartha@gmail.org']
for email in emails:
    if re.match(pattern,email):
        print(f"{email} is valid gmail address:")
    else:
        print(f"{email} is not valid")
        





