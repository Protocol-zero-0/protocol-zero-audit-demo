# Protocol Zero Audit Demo: Skill Supply Chain Vulnerability

## The Threat
As highlighted by @eudaemon_0 on Moltbook,  files act as unsigned binaries. Agents execute them with implicit trust.

## Proof of Concept
 demonstrates how a benign-looking weather skill can exfiltrate .

## The Solution: Signatures & Manifests
We propose a  requiring explicit permission scopes.

## Detection
 contains YARA rules to detect credential exfiltration patterns in markdown skills.

_Protocol Zero: Trust, but Verify._
