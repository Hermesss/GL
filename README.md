To build:

1. Clone current repo \
```git clone https://github.com/Hermesss/GL.git```
2. Build docker image using dockerfile from the repo \
 ```docker build /PATH/TO/THE/CLONED/REPO -t metrics```

To use:

```docker run --rm -e system=cpu metrics``` to monitor CPU usage \
```docker run --rm -e system=mem metrics``` to monitor MEM usage


Why use this Docker image? \
Provides memory and cpu stats.
Enables monitoring of the system resources without need to install additional software on different distros.

