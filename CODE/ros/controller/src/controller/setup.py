#!/usr/bin/env python3

from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

pollotron_controller  = generate_distutils_setup(
    packages=['pollotron_controller'],
    package_dir={'': 'src'}
)

webpage_controller  = generate_distutils_setup(
    packages=['webpage_controller'],
    package_dir={'': 'src'}
)

controller_reader  = generate_distutils_setup(
    packages=['controller_reader'],
    package_dir={'': 'src'}
)

setup(**pollotron_controller)
setup(**webpage_controller)
setup(**controller_reader)