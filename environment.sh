#!/bin/bash
# load this using   source environment.sh
source ~/bin/activate-epd-7.3
export BV_ROOT=/data/work/scm/env_bv
export BV_PREFIX=${BV_ROOT}/deploy
export BV_SRC=${BV_ROOT}/src
export BV_DATA=${BV_ROOT}/data
export BV_OUT=${BV_ROOT}/results
export PATH=${BV_PREFIX}/bin:$PATH
export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:${BV_PREFIX}/lib
export PYTHONPATH=${BV_PREFIX}/lib/python2.6/site-packages:$PYTHONPATH
export PYTHONPATH=${BV_PREFIX}/lib/python2.7/site-packages:$PYTHONPATH
export PKG_CONFIG_PATH=${BV_PREFIX}/lib/pkgconfig:$PKG_CONFIG_PATH
source ${BV_PREFIX}/bin/activate
