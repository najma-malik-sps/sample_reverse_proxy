# Reverse Proxy Sample App

This is a reverse proxy app which request to proxy site: 'www.aboutamazon.com'

Here if we start app with rails s considering app running on localhost:3000. We can see this reverse proxy app receive the response from proxy server "www.aboutamazon.com" and render the same HTML in localhost:3000.

Also if we browse to http://localhost:3000/news/devices/how-amazon-builds-its-devices-with-your-privacy-in-mind it renders same html from https://www.aboutamazon.com/news/devices/how-amazon-builds-its-devices-with-your-privacy-in-mind
