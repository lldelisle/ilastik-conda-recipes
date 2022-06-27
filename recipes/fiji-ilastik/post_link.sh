#!/usr/bin/env bash
rm "${CONDA_PREFIX}/bin/ImageJ"
cp "${CONDA_PREFIX}/pkgs/fiji-ilastik-1.8.2-0/info/recipe/ImageJ" "${CONDA_PREFIX}/bin/ImageJ"
chmod a+x "${PREFIX}/bin/ImageJ"
