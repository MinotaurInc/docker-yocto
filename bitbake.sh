#!/bin/bash

cmd=$(basename $0)

sudo -E /sbin/setuser builduser \
	bash -c "source /var/build/poky/oe-init-build-env && export BB_ENV_EXTRAWHITE=\"${BB_ENV_EXTRAWHITE} VAD_SCM_REPO VAD_SCM_PROTOCOL VAD_SCM_OBJ VAD_PRODUCT_VERSION MACHINE SSTATE_DIR SSTATE_MIRRORS SSH_AUTH_SOCK\" && ${cmd} $*"
