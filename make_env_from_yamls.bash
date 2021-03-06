#!/usr/bin/env bash

export RELEASE="v81"
export PREPEND_CHANNEL="-c cdat/label/test"
export PREPEND_CHANNEL=""
export APPEND_CHANNEL=""

export ACTIVATE_COMMAND="conda"
export CREATE="n"

echo "ACTIVATE COMMAND: ${ACTIVATE_COMMAND}"

${ACTIVATE_COMMAND} deactivate
${ACTIVATE_COMMAND} activate base

for PYVER in 2.7 3.6 3.7
    do
        for MESA in y n
        do
            if [ $MESA == "y" ]; then
                export MESA_NAME="-nox"
                export MESA_PKG="mesalib"
            else
                export MESA_NAME=""
                export MESA_PKG=""
            fi
            echo "Doing version $PYVER with mesalib set to $MESA"
            conda env create -f cdat-${RELEASE}${MESA_NAME}_py$PYVER.$(uname).yaml 
            ${ACTIVATE_COMMAND} deactivate
            ${ACTIVATE_COMMAND} activate base
        done
    done

