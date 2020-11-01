README
=========

### Introduction

I created this container as a result of wanting to have a containerized version of Telegraf execute Python scripts to collect data from my Sense.com energy monitor. To learn more about the latest official Telegraf container image, please see [here](https://github.com/influxdata/influxdata-docker/tree/master/telegraf). While this container is designed for modern Raspberry Pi hardware it may work on other platforms with some minor modifications.

### Build (Optional)

* Clone all of the appropriate files from GitHub and change to the repo directory
  ```bash
  root@dbraspberrypi02:~# git clone https://github.com/dburkland/telegraf_python.git

  root@dbraspberrypi02:~# cd telegraf_python
  ```

* Build the telegraf_python container image
  ```bash
  root@dbraspberrypi02:~/telegraf_python# docker build -t dburkland/telegraf_python .
  ````

* Verify the container image build completed successfully 
  ```bash
  root@dbraspberrypi02:~/telegraf_python# docker images
  REPOSITORY                   TAG                 IMAGE ID            CREATED             SIZE
  dburkland/telegraf_python   latest              0be2257b19f0        2 minutes ago       692MB
  ````

### Usage

* Replace the values mentioned below with ones that match your configuration and start an instance of the container
  ```bash
  root@dbraspberrypi02:~# docker run -d --name=telegraf_python --link influxdb -v /data/etc/telegraf:/etc/telegraf -v /data/opt/scripts:/opt/scripts --restart=always dburkland/telegraf_python:latest
  ```
