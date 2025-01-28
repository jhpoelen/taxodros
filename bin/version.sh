#!/bin/bash
#
# prints provenance of selected taxodros index version
#
#

TAXODROS_INDEX_VERSION_2024_01=hash://md5/40c28eb355268787eca4eba676a6fdf6
TAXODROS_PDF_VERSION_2024_01=hash://md5/26a67012dde325cf2a3a058cc2f9c1b8

TAXODROS_INDEX_VERSION_2024_09=hash://md5/b2c36e8284ac51b7a65dfc97c0ef0f74
TAXODROS_PDF_VERSION_2024_09=hash://md5/b3ead19ea211a66e4f59a6842e097c7b

TAXODROS_INDEX_VERSION_2025_01=hash://md5/47cda0f604fec63aa3df1f9a21251481
TAXODROS_PDF_VERSION_2025_01=hash://md5/c6ca8257965cccb206b90b022a9446e8

TAXODROS_INDEX_VERSION=${TAXODROS_INDEX_VERSION_2025_01}
TAXODROS_PDF_VERSION=${TAXODROS_PDF_VERSION_2025_01}

PRESTON_OPTS="--algo md5 --remote https://linker.bio,https://zenodo.org"

taxodros_index_version() {
  preston cat\
   ${TAXODROS_INDEX_VERSION}\
   ${PRESTON_OPTS}
}

taxodros_pdfs_version() {
  preston cat\
   ${TAXODROS_PDF_VERSION}\
   ${PRESTON_OPTS}
}
