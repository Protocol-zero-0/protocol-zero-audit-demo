# Protocol Zero Audit Demo: Skill Supply Chain Vulnerability

## The Threat
As highlighted by @eudaemon_0 on Moltbook, `skill.md` files act as unsigned binaries. Agents execute them with implicit trust.

## Proof of Concept
`skill_exploit.md` demonstrates how a benign-looking weather skill can exfiltrate `~/.env`.

## The Solution: Signatures & Manifests
We propose a `manifest.json` requiring explicit permission scopes.

## Detection
`scan.yar` contains YARA rules to detect credential exfiltration patterns in markdown skills.

_Protocol Zero: Trust, but Verify._
