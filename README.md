# docker-haproxy-helloworld

A docker-based hello world setup for HAProxy.

## Introduction

Feature tested:
- Load balancing with different rates
- Rate limiting
- Static resource routing

## Usage

Powershell 1:
```
node .\mock-backend-server\index.js 8000 backend-server-1
```

Powershell 2:
```
node .\mock-backend-server\index.js 8001 backend-server-2
```

Powershell 3:
```
.\docker-run.ps1
```

## References

https://hub.docker.com/r/haproxytech/haproxy-alpine

http://www.haproxy.org