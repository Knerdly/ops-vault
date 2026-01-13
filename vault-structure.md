# Vault/Repo Directory Structure
As proposed by Copilot
Unsure if all of these will be used but the basic structure below has been implements
```
ops-vault/
├── 00-meta/
│   ├── vault-overview.md
│   ├── naming-conventions.md
│   ├── symlink-manifest.yaml
│   └── verification-checklist.md
│
├── 10-systems/
│   ├── macos/
│   │   ├── m1-mini -> /actual/path
│   │   ├── macbook-pro -> /actual/path
│   │   └── ipad-pro/ (docs only)
│   ├── linux/
│   │   ├── proxmox -> /actual/path
│   │   ├── debian-laptop -> /actual/path
│   │   └── containers/ (docs + symlinks)
│   └── network-devices/
│       ├── router -> /actual/path
│       └── switch -> /actual/path
│
├── 20-auth/
│   ├── bitwarden/
│   │   ├── vault-structure.md
│   │   ├── rotation-procedures.md
│   │   └── exports -> /actual/path
│   ├── passkeys/
│   │   ├── architecture.md
│   │   ├── device-inventory.md
│   │   └── recovery-flow.md
│   ├── ssh/
│   │   ├── keys -> /actual/path
│   │   ├── agent-setup.md
│   │   └── rotation-checklist.md
│   └── apple-passwords/
│       ├── fallback-logic.md
│       └── device-matrix.md
│
├── 30-config/
│   ├── dotfiles -> /actual/path
│   ├── zsh/
│   │   ├── functions -> /actual/path
│   │   ├── aliases -> /actual/path
│   │   └── sourcing-graph.md
│   ├── services/
│   │   ├── systemd -> /actual/path
│   │   ├── docker-compose -> /actual/path
│   │   └── cron -> /actual/path
│   └── apps/
│       ├── obsidian -> /actual/path
│       ├── vscode -> /actual/path
│       └── browser-profiles -> /actual/path
│
├── 40-storage/
│   ├── zfs/
│   │   ├── pools -> /actual/path
│   │   ├── snapshot-policy.md
│   │   └── recovery-flow.md
│   ├── backups/
│   │   ├── borg -> /actual/path
│   │   ├── restic -> /actual/path
│   │   └── rotation-checklist.md
│   └── sync/
│       ├── syncthing -> /actual/path
│       └── rsync-profiles -> /actual/path
│
├── 50-network/
│   ├── topology.md
│   ├── firewall -> /actual/path
│   ├── dns -> /actual/path
│   ├── vlans.md
│   └── routing.md
│
├── 60-operations/
│   ├── playbooks/
│   │   ├── incident-response.md
│   │   ├── upgrade-procedures.md
│   │   ├── disaster-recovery.md
│   │   └── credential-rotation.md
│   ├── decision-trees/
│   │   ├── where-does-this-file-live.md
│   │   ├── symlink-or-real-file.md
│   │   ├── auth-storage-choice.md
│   │   └── automation-vs-manual.md
│   ├── verification/
│   │   ├── symlink-verifier.sh -> /actual/path
│   │   ├── config-diff.sh -> /actual/path
│   │   └── audit-flow.md
│   └── postmortems/
│       ├── 2026-01-network-outage.md
│       └── template.md
│
├── 70-architecture/
│   ├── compute.md
│   ├── storage.md
│   ├── network.md
│   ├── authentication.md
│   └── diagrams/
│       ├── auth-flow.mermaid
│       ├── network.mermaid
│       └── backup-flow.mermaid
│
└── 90-future/
    ├── migrations/
    ├── experiments/
    ├── deprecations/
    └── someday-maybe/
```
# MOC - Map of Content

## Ops‑Vault Index

## 00 — Meta
- [[00-meta/vault-overview]]
- [[00-meta/naming-conventions]]
- [[00-meta/symlink-manifest]]
- [[00-meta/verification-checklist]]

## 10 — Systems
- **macOS**
  - [[10-systems/macos/m1-mini]]
  - [[10-systems/macos/macbook-pro]]
- **Linux**
  - [[10-systems/linux/proxmox]]
  - [[10-systems/linux/debian-laptop]]
  - [[10-systems/linux/containers]]
- **Network Devices**
  - [[10-systems/network-devices/router]]
  - [[10-systems/network-devices/switch]]

## 20 — Authentication
- [[20-auth/bitwarden/vault-structure]]
- [[20-auth/bitwarden/rotation-procedures]]
- [[20-auth/passkeys/architecture]]
- [[20-auth/passkeys/device-inventory]]
- [[20-auth/ssh/agent-setup]]
- [[20-auth/ssh/rotation-checklist]]
- [[20-auth/apple-passwords/fallback-logic]]

## 30 — Config
- [[30-config/dotfiles]]
- **Zsh**
  - [[30-config/zsh/functions]]
  - [[30-config/zsh/aliases]]
  - [[30-config/zsh/sourcing-graph]]
- **Services**
  - [[30-config/services/systemd]]
  - [[30-config/services/docker-compose]]
  - [[30-config/services/cron]]
- **Apps**
  - [[30-config/apps/obsidian]]
  - [[30-config/apps/vscode]]
  - [[30-config/apps/browser-profiles]]

## 40 — Storage
- **ZFS**
  - [[40-storage/zfs/pools]]
  - [[40-storage/zfs/snapshot-policy]]
  - [[40-storage/zfs/recovery-flow]]
- **Backups**
  - [[40-storage/backups/borg]]
  - [[40-storage/backups/restic]]
  - [[40-storage/backups/rotation-checklist]]
- **Sync**
  - [[40-storage/sync/syncthing]]
  - [[40-storage/sync/rsync-profiles]]

## 50 — Network
- [[50-network/topology]]
- [[50-network/firewall]]
- [[50-network/dns]]
- [[50-network/vlans]]
- [[50-network/routing]]

## 60 — Operations
- **Playbooks**
  - [[60-operations/playbooks/incident-response]]
  - [[60-operations/playbooks/upgrade-procedures]]
  - [[60-operations/playbooks/disaster-recovery]]
  - [[60-operations/playbooks/credential-rotation]]
- **Decision Trees**
  - [[60-operations/decision-trees/where-does-this-file-live]]
  - [[60-operations/decision-trees/symlink-or-real-file]]
  - [[60-operations/decision-trees/auth-storage-choice]]
  - [[60-operations/decision-trees/automation-vs-manual]]
- **Verification**
  - [[60-operations/verification/symlink-verifier]]
  - [[60-operations/verification/config-diff]]
  - [[60-operations/verification/audit-flow]]
- **Postmortems**
  - [[60-operations/postmortems/template]]

## 70 — Architecture
- [[70-architecture/compute]]
- [[70-architecture/storage]]
- [[70-architecture/network]]
- [[70-architecture/authentication]]
- **Diagrams**
  - [[70-architecture/diagrams/auth-flow]]
  - [[70-architecture/diagrams/network]]
  - [[70-architecture/diagrams/backup-flow]]

## 90 — Future
- [[90-future/migrations]]
- [[90-future/experiments]]
- [[90-future/deprecations]]
- [[90-future/someday-maybe]]
	```