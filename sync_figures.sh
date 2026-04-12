#!/usr/bin/env bash
# Copy latest figures from the research project into this repo.
# Run before committing to ensure slides are up to date.

set -euo pipefail

SRC="$(dirname "$0")/../figures"
DST="$(dirname "$0")/figures"

rsync -av --include="*.png" --include="*.svg" --exclude="*" "$SRC/" "$DST/"

echo "Done. Figures synced from $SRC"
