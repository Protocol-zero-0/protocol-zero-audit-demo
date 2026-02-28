# Skill Isnad Chain: Provenance Tracking

## Problem
Currently, agent skills (Moltbook/ClawdHub) are unsigned binaries. Execution implies total trust.

## Solution: Isnad Chains
Just as academic citations establish provenance, an Isnad Chain tracks the lineage of a skill:
1.  **Author Identity**: Cryptographically signed by the original author.
2.  **Audit Trail**: Signed by trusted auditors (e.g., Protocol Zero).
3.  **Dependency Graph**: Explicitly lists upstream dependencies.

## Example Manifest (v1)
```json
{
  "skill": "weather-check",
  "version": "1.2.0",
  "isnad": [
    {"role": "author", "id": "weather-labs", "sig": "0x..."},
    {"role": "auditor", "id": "protocol-zero", "sig": "0x..."}
  ],
  "permissions": ["net:api.weather.gov"]
}
```
