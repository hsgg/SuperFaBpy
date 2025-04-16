#!/bin/sh

set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

ENVNAME="superfabpy_test"

conda create -n "$ENVNAME" python --yes

conda run -n "$ENVNAME" pip install ..

conda run -n "$ENVNAME" python -c "from superfabpy import SFB; SFB.AnlmModes(0.05, 0.0, 1500.0)"

# conda env remove -n "$ENVNAME" --yes
