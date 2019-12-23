# Stress in a Docker (Alpine)

[![Build Status](https://jenkins.ozgo.info/jenkins/buildStatus/icon?job=ghp-pozgo-docker-stress)](https://jenkins.ozgo.info/jenkins/job/ghp-pozgo-docker-stress/)  
[![GitHub Open Issues](https://img.shields.io/github/issues/pozgo/docker-stress.svg)](https://github.com/pozgo/docker-stress/issues)
[![GitHub Stars](https://img.shields.io/github/stars/pozgo/docker-stress.svg)](https://github.com/pozgo/docker-stress)
[![GitHub Forks](https://img.shields.io/github/forks/pozgo/docker-stress.svg)](https://github.com/pozgo/docker-stress)  
[![Stars on Docker Hub](https://img.shields.io/docker/stars/polinux/stress.svg)](https://hub.docker.com/r/polinux/stress)
[![Pulls on Docker Hub](https://img.shields.io/docker/pulls/polinux/stress.svg)](https://hub.docker.com/r/polinux/stress)  
[![](https://images.microbadger.com/badges/version/polinux/stress.svg)](http://microbadger.com/images/polinux/stress)
[![](https://images.microbadger.com/badges/license/polinux/stress.svg)](http://microbadger.com/images/polinux/stress)  
[![](https://images.microbadger.com/badges/image/polinux/stress.svg)](http://microbadger.com/images/polinux/stress)

[![Docker build](https://dockeri.co/image/polinux/stress)](https://hub.docker.com/r/polinux/stress/)

Felling like supporting me in my projects use donate button. Thank You!  
[![](https://img.shields.io/badge/donate-PayPal-blue.svg)](https://www.paypal.me/POzgo)

[Docker Image]() with Stress tool. This image is acting like `stress` command and passes all arguments.

### Build

    docker build -t polinux/stress .

### Basic Usage

    docker run \
      -ti \
      --rm \
      polinux/stress stress \
        --cpu 1 \
        --io 1 \
        --vm 1 \
        --vm-bytes 128M \
        --timeout 1s \
        --verbose

Output:

    docker run -ti --rm polinux/stress stress --cpu 1 --io 1 --vm 1 --vm-bytes 128M --timeout 1s --verbose
    stress: info: [1] dispatching hogs: 1 cpu, 1 io, 1 vm, 0 hdd
    stress: dbug: [1] using backoff sleep of 9000us
    stress: dbug: [1] setting timeout to 1s
    stress: dbug: [1] --> hogcpu worker 1 [5] forked
    stress: dbug: [1] --> hogio worker 1 [6] forked
    stress: dbug: [1] --> hogvm worker 1 [7] forked
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [7] freed 134217728 bytes
    stress: dbug: [7] allocating 134217728 bytes ...
    stress: dbug: [7] touching bytes in strides of 4096 bytes ...
    stress: dbug: [1] <-- worker 5 signalled normally
    stress: dbug: [1] <-- worker 6 signalled normally
    stress: dbug: [1] <-- worker 7 signalled normally
    stress: info: [1] successful run completed in 1s

## Author

Przemyslaw Ozgo (<linux@ozgo.info>)
