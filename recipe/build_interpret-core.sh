#!/usr/bin/env bash

pushd python/interpret-core/
$PYTHON -m pip install . -vv --no-deps --no-build-isolation
popd
