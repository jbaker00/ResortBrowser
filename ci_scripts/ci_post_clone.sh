#!/bin/sh
# ci_post_clone.sh
# Xcode Cloud: runs automatically after the repo is cloned, before the build.
#
# Generates GoogleService-Info.plist from the committed template by substituting
# the FIREBASE_API_KEY environment variable.
#
# Set FIREBASE_API_KEY in:
#   Xcode Cloud → Workflow → Environment → Environment Variables (mark as Secret)

set -e

REPO_ROOT="$CI_PRIMARY_REPOSITORY_PATH"
TEMPLATE="$REPO_ROOT/GoogleService-Info.plist.template"
OUTPUT="$REPO_ROOT/GoogleService-Info.plist"

if [ -z "$FIREBASE_API_KEY" ]; then
  echo "ERROR: FIREBASE_API_KEY environment variable is not set."
  echo "Set it in Xcode Cloud → Workflow → Environment → Environment Variables (Secret)."
  exit 1
fi

if [ ! -f "$TEMPLATE" ]; then
  echo "ERROR: GoogleService-Info.plist.template not found at $TEMPLATE"
  exit 1
fi

# Substitute placeholder and write the real plist
sed "s|\${FIREBASE_API_KEY}|$FIREBASE_API_KEY|g" "$TEMPLATE" > "$OUTPUT"

echo "GoogleService-Info.plist generated from template."
