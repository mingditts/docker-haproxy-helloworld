docker build -t my-haproxy .

docker run -it --rm my-haproxy haproxy -c -f /usr/local/etc/haproxy/haproxy.cfg

docker run -p 4000:4000 -p 7000:7000 --name my-running-haproxy my-haproxy

#open browser http://localhost:7000/static/
#open browser http://localhost:4000/api/data 10 times and count occurences of server1 and server2
#open browser http://localhost:4000/api/data reload as fast as you can the page using F5