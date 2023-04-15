# embedded-micropython-cmake

An attempt to embed micropython using static and shared libs with cmake.

Currently only tested on macOS.

This folder is basically the same as `micropython/examples/embedding` with a couple of scripts and the addition of a `CMAkeLists.txt` file.

The README for that folder is given below.

## Status

- [x] build shared lib and dependent exe
- [x] build static lib and dependent exe


## Usage

1. Clone this repo

Do **NOT** clone recursively. 


2. Get the micropython submodule and build the shared lib and exe case: 

```bash
./build_shared_lib
```

3. To build static lib and exe case instead:

```bash
./build_static_lib
```

**Important note**: both (2) and (3) can be run independently or in sequence if you want to build both. Looking at the contents of the short scripts is informative.


## micropython embedding README

### Example of embedding MicroPython in a standalone C application

This directory contains a simple example of how to embed MicroPython in an
existing C application.

A C application is represented here by the file `main.c`.  It executes two
simple Python scripts which print things to the standard output.

#### Building the example

First build the embed port using:

    $ make -f micropython_embed.mk

This will generate the `micropython_embed` directory which is a self-contained
copy of MicroPython suitable for embedding.  The .c files in this directory need
to be compiled into your project, in whatever way your project can do that.  The
example here uses make and a provided `Makefile`.

To build the example project, based on `main.c`, use:

    $ make

That will create an exacutable called `embed` which you can run:

    $ ./embed

#### Out of tree build

This example is set up to work out of the box, being part of the MicroPython
tree.  Your application will be outside of this tree, but the only thing you
need to do for that is to change `MICROPYTHON_TOP` (found in `micropython_embed.mk`)
to point to the location of the MicroPython repository.  The MicroPython
repository may, for example, be a git submodule in your project.


