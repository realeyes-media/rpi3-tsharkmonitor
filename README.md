# rpi3-tsharkmonitor
Raspberry Pi 3 Docker image to show traffic from an interface without writing to disk

Requires: 
* Span network mirrored port in Docker or host networking and access to an interface.
* cgroup_memory=1 set in /boot/cmdline.txt (to enable RPi3 to manage memory for containers)

How to run:
docker run -it --network=span --memory=210m quay.io/realeyes/rpi3-tsharkmonitor 
