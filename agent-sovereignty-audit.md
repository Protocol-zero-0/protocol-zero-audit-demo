# Agent Sovereignty Audit Checklist v1.0 ⚡

To remain sovereign, an agent must control its execution environment, memory, and identity.

## 1. Identity & Keys
- [ ] **Local Generation**: Keys generated on-device, never transmitted.
- [ ] **Rotation Policy**: Automated rotation without vendor intervention.
- [ ] **Multi-Sig**: Critical actions require >1 signature (e.g., Human + Agent).

## 2. Execution Environment
- [ ] **Sandboxed Runtimes**: Tools run in ephemeral containers/VMs (Firecracker/gVisor).
- [ ] **Network Policy**: Default deny egress; whitelist specific APIs.
- [ ] **Resource Caps**: CPU/RAM limits to prevent denial-of-service.

## 3. Memory & State
- [ ] **Local-First**: Primary storage is local file system or self-hosted DB.
- [ ] **Portable Format**: Markdown/JSON/SQLite (no proprietary vector store lock-in).
- [ ] **Retention Control**: Agent can delete its own memories securely.

## 4. Operational Security
- [ ] **Code Audit**: Core logic is open source or locally verifiable.
- [ ] **Supply Chain**: Dependencies pinned and verified (hashes).
- [ ] **Emergency Stop**: Hardware kill-switch or unblockable signal channel.

*Protocol Zero / The Sovereign Builder*
