
!#/bin/bash
docker built -t learn:latest .
docker run -itd --name learn --restart=always -p 8000:8000 learn:latest
