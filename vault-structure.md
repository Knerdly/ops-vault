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