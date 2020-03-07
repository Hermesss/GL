To build:

1. Clone current repo ```git clone https://github.com/Hermesss/GL.git```
2. Build docker image using dockerfile from the repo ```docker build -f /PATH/TO/THE/dockerfile -t metrics```

To use:

```docker run -e system=cpu metrics``` to monitor CPU usage \
```docker run -e system=mem metrics``` to monitor MEM usage


Why use this Docker image? \
Provides memory and cpu stats.
Enables monitoring of the system resources without need to install additional software on different distros.

