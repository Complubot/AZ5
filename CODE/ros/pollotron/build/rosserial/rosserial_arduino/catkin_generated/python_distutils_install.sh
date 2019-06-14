#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/rosserial/rosserial_arduino"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/install/lib/python2.7/dist-packages:/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build" \
    "/usr/bin/python" \
    "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/src/rosserial/rosserial_arduino/setup.py" \
    build --build-base "/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/build/rosserial/rosserial_arduino" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/install" --install-scripts="/home/complubot/Documents/POLLOTRON/CODE/ros/pollotron/install/bin"
