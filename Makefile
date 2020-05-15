SINGULARITY ?= /opt/singularity-2.6/bin/singularity

URL := https://github.com/bazelbuild/bazel/releases/download/3.1.0/bazel-3.1.0-linux-x86_64
BIN := $(notdir $(URL))
SRC := bazel.def
TARGET := bazel.simg

.PHONY : build
build : $(TARGET)

%.simg : %.def $(BIN)
	sudo $(SINGULARITY) build --force --notest $@ $<

$(BIN) :
	wget $(URL)
	chmod +x $@

.PHONY : test
test : $(TARGET)
	$(SINGULARITY) test $<
