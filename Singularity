# -*- mode: rpm-spec -*-
Bootstrap: docker
From: centos:7

%post
    wget -O /usr/bin/bazel https://github.com/bazelbuild/bazel/releases/download/3.1.0/bazel-3.1.0-linux-x86_64
    chmod +x /usr/bin/bazel

%runscript
    exec bazel "$@"

%test
    bazel version

%labels
    Author hpc@uconn.edu
    Version v3.1.0

%help
    Bazel build tool in a container with newer glibc for RHEL 6 compatibility.
