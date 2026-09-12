# import requests
# url = "https://codegnan.com"
# response = requests.get(url)
# if response.status_code == 200:
#     print("Website is accessible.")
# else:
#     print("Unable to access the website.")
    

# import requests
# url = "https://codegnan.com"
# response = requests.get(url)
# print(response.text[:1000])

import requests
from bs4 import BeautifulSoup
url = "https://codegnan.com"
response = requests.get(url)
soup = BeautifulSoup(response.text, "html.parser")
print(soup.title.text)

import requests
from bs4 import BeautifulSoup
url = "https://codegnan.com"
response = requests.get(url)
soup = BeautifulSoup(response.text, "html.parser")
print(soup.p.text)

import requests
from bs4 import BeautifulSoup
url = "https://codegnan.com"
response = requests.get(url)
soup = BeautifulSoup(response.text, "html.parser")
images = soup.find_all("img")
for image in images:
    print(image.get("src"))