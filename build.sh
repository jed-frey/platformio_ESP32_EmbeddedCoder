#!/usr/bin/env bash

export MATLAB_PREFDIR=`pwd`/PREFDIR
/usr/local/MATLAB/R2019b/bin/matlab \
	-nosplash \
	-nosoftwareopengl \
	-r "run('build')"  \
	-sd `pwd` \
	-logfile build.log
