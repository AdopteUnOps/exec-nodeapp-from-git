#!/usr/bin/env bash
set -x
set -e

LOCAL_GIT_FOLDER="/sources"

if [ ! -d "${LOCAL_GIT_FOLDER}"]; then
  echo "Cloning repository ${GIT_URL} ..."
  git clone ${GIT_URL} ${LOCAL_GIT_FOLDER}
fi

cd ${LOCAL_GIT_FOLDER}

echo "Checking out branch ${GIT_CHECKOUT} ..."
git checkout ${GIT_CHECKOUT}

echo "Fetching dependencies ... "
$(${NPM_INSTALL_COMMAND})

echo "Starting app ..."
$(${NPM_RUN_COMMAND})
