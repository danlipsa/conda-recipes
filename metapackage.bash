export VERSION=2.12
export SUFFIX=nightly
export BUILD=0
export OPERATOR=">="
conda metapackage uvcdat ${VERSION}.${SUFFIX} --build-number ${BUILD} --dependencies "cdat_info ${OPERATOR}${VERSION}" "distarray ${OPERATOR}${VERSION}" "cdms2 ${OPERATOR}${VERSION}" "cdtime ${OPERATOR}${VERSION}" "cdutil ${OPERATOR}${VERSION}" "genutil ${OPERATOR}${VERSION}" "vtk-cdat ${OPERATOR}7.1.0.${VERSION}" "dv3d ${OPERATOR}${VERSION}" "vcs ${OPERATOR}${VERSION}" "vcsaddons ${OPERATOR}${VERSION}" "thermo ${OPERATOR}${VERSION}" "wk ${OPERATOR}${VERSION}" "xmgrace ${OPERATOR}${VERSION}" "hdf5tools ${OPERATOR}${VERSION}" "asciidata ${OPERATOR}${VERSION}" "binaryio ${OPERATOR}${VERSION}" "cssgrid ${OPERATOR}${VERSION}" "dsgrid ${OPERATOR}${VERSION}" "lmoments ${OPERATOR}${VERSION}" "natgrid ${OPERATOR}${VERSION}" "ort ${OPERATOR}${VERSION}" "regridpack ${OPERATOR}${VERSION}" "shgrid ${OPERATOR}${VERSION}" "trends ${OPERATOR}${VERSION}" "zonalmeans ${OPERATOR}${VERSION}" matplotlib basemap ipython jupyter nb_conda flake8 autopep8 spyder eofs windspharm cibots cdp output_viewer
