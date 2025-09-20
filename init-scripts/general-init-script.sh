#!/bin/bash
set -ex
echo $DB_CLUSTER_NAME

# Optional cscrootcerts.crt path
export CERT_PATH="/Volumes/prd_dash_config/common/init_scripts/src/cscrootcert.crt"

# Source  to pull install scripts from GitHub
URL=https://raw.githubusercontent.com/Defra-Data-Science-Centre-of-Excellence/init-scripts/main/src
wget $URL/rootcert.sh -O- | bash -ex
wget $URL/update.sh -O- | bash  -ex
wget $URL/base_libs.sh -O- | bash  -ex

# Install additional system libraries
sudo apt-get install -y librsvg2-dev pandoc

# Install R packages
Rscript /Volumes/prd_dash_lab/aqienn_restricted/evidence/config/r_installs.R
