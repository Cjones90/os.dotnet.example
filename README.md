### Install Docker

Dev & Production system require:  
**[Docker](https://docs.docker.com/engine/installation/)** (Engine & Compose) (v2+)  

### Development  

1) Edit `docker-compose.yml` to suit your needs   
    1a) Check `HOST` under `HOST:CONTAINER` in `docker-compose.yml` for port  
2) Inside directory with `docker-compose.yml` run:  
`docker-compose up [-d]`  

### Running this project

This project is a sample repo for using .NET core (mono) inside docker.

0) No Docker? View Install Docker section above to install

No build    
1) `docker pull jestrr/dotnet:0.1.0`  
2) `docker-compose up`  
3) Visit "localhost:5555/hello.aspx" to view the calendar  

Build  
1) `docker-compose up`  
2) Visit "localhost:5555/hello.aspx" to view the calendar  
