#!/bin/bash

set -x

OCSCI_INSTALL_DIR="${OCSCI_INSTALL_DIR:=/opt/ocs-ci}"
OCSCI_REPO_URL="https://github.com/kesavanvt/ocs-ci"
OCSCI_BRANCH="osd-acceptance-latest"

git clone "$OCSCI_REPO_URL" --branch "$OCSCI_BRANCH" "$OCSCI_INSTALL_DIR"

pushd "$OCSCI_INSTALL_DIR"
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip setuptools
pip install -r requirements.txt
popd

which run-ci
