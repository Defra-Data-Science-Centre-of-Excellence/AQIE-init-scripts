# #!/bin/bash
# set -ex
# echo $DB_CLUSTER_NAME

# # Optional cscrootcerts.crt path
# export CERT_PATH="/Volumes/prd_dash_config/common/init_scripts/src/cscrootcert.crt"

# # Source  to pull install scripts from GitHub
# URL=https://raw.githubusercontent.com/Defra-Data-Science-Centre-of-Excellence/init-scripts/main/src
# wget $URL/rootcert.sh -O- | bash -ex
# wget $URL/update.sh -O- | bash  -ex
# wget $URL/base_libs.sh -O- | bash  -ex

# # Install additional system libraries
# sudo apt-get update -y
# sudo apt-get install -y librsvg2-dev pandoc


#!/bin/bash
set -ex

echo "=== Starting init script ==="
echo "Cluster name: $DB_CLUSTER_NAME"

# Optional path for your root certificates
export CERT_PATH="/Volumes/prd_dash_config/common/init_scripts/src/cscrootcert.crt"
echo "CERT_PATH set"

# GitHub URL for standard install scripts
URL=https://raw.githubusercontent.com/Defra-Data-Science-Centre-of-Excellence/init-scripts/main/src

echo "=== Running rootcert.sh ==="
#wget $URL/rootcert.sh -O- | bash -ex
echo "=== Finished rootcert.sh ==="

echo "=== Running update.sh ==="
wget $URL/update.sh -O- | bash -ex
echo "=== Finished update.sh ==="

echo "=== Running base_libs.sh ==="
wget $URL/base_libs.sh -O- | bash -ex
echo "=== Finished base_libs.sh ==="

echo "=== Installing system libraries (librsvg2-dev, pandoc) ==="
sudo apt-get update -y
sudo apt-get install -y librsvg2-dev pandoc
echo "=== Finished installing system libraries ==="

# Fetch and run the R installation script
R_SCRIPT_URL="https://raw.githubusercontent.com/Defra-Data-Science-Centre-of-Excellence/aqie-init-scripts/main/init-scripts/r_installs.R"
echo "=== Running R installation script ==="
wget -qO- $R_SCRIPT_URL | Rscript -
echo "=== Finished R installation script ==="

echo "=== Init script complete ==="
