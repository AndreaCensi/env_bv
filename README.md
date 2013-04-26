

Installing py2cairo with EPD + OS X 10.8
-----------------------------------------

Need py2cairo forPython 2.x

    ./waf configure --prefix $BV_PREFIX
    ./waf build

Problem:

    python -c "import cairo"       
    Fatal Python error: PyThreadState_Get: no current thread[1]    
    79043 abort      python -c "import cairo"

The last compilation is wrong, because it links python in /opt/local/lib:

    /usr/bin/gcc src/cairomodule.c.1.o src/context.c.1.o src/font.c.1.o src/path.c.1.o src/pattern.c.1.o src/matrix.c.1.o src/surface.c.1.o -o /data/work/scm/env_bv/src-third/py2cairo-1.10.0/build_directory/src/_cairo.so -L/opt/local/lib -lcairo -lpython2.7 -L/Library/Frameworks/EPD64.framework/Versions/7.3//lib -dynamiclib -arch x86_64 -arch x86_64 -arch x86_64 -arch x86_64'

We need to add -L/Library/Frameworks/EPD64.framework/Versions/7.3//lib  before '-lpython2.7' 

    /usr/bin/gcc src/cairomodule.c.1.o src/context.c.1.o src/font.c.1.o src/path.c.1.o src/pattern.c.1.o src/matrix.c.1.o src/surface.c.1.o -o /data/work/scm/env_bv/src-third/py2cairo-1.10.0/build_directory/src/_cairo.so -L/Library/Frameworks/EPD64.framework/Versions/7.3//lib -L/opt/local/lib -lcairo  -lpython2.7 -dynamiclib -arch x86_64 -arch x86_64 -arch x86_64 -arch x86_64

Now install:
    
    ./waf install