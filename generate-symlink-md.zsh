#!/usr/bin/env zsh

set -euo pipefail

# ALL-CAPS for globals
VAULT_DIR="/opt/repos/github/ops-vault/infra/symlinks/entries"
MANIFEST="/opt/repos/github/eponym/configs/manifests/symlinks.yaml"

mkdir -p "$VAULT_DIR"

# Require yq
if ! command -v yq >/dev/null 2>&1; then
  echo "yq is required but not installed" >&2
  exit 1
fi

# Parse YAML entries
ENTRY_COUNT=$(yq '. | length' "$MANIFEST")

for ((i=0; i<ENTRY_COUNT; i++)); do
  NAME=$(yq -r ".[$i].name" "$MANIFEST")
  TARGET=$(yq -r ".[$i].target" "$MANIFEST")
  MACOS_LINK=$(yq -r ".[$i].link.macos" "$MANIFEST")
  ROLES=$(yq -r ".[$i].roles | join(\", \")" "$MANIFEST")
  USER_MANAGED=$(yq -r ".[$i].user_managed" "$MANIFEST")

  # Deterministic filename
  FILE="$VAULT_DIR/${NAME}.md"

  # Create Markdown entry
  cat > "$FILE" <<EOF
---
name: ${NAME}
status: unknown
last_verified: null
host: macos
roles: [${ROLES}]
user_managed: ${USER_MANAGED}
source: "${MACOS_LINK}"
target: "${TARGET}"
notes: ""
---
EOF

  echo "Created: $FILE"
done

echo "All Markdown entries generated."

