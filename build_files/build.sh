#!/bin/bash

set -ouex pipefail

#### Enable repos
/ctx/base/01-enable-repos.sh

#### Install packages
#/ctx/base/02-system-packages.sh
#/ctx/base/99-coreos-desktop.sh
/ctx/base/98-silverblue.sh

#### Apply Flatpaks
/ctx/base/04-flatpaks.sh

#### Apply Overrides 
/ctx/base/08-override-schemas.sh

#### Clean up
/ctx/base/09-finalize-cleanup.sh
