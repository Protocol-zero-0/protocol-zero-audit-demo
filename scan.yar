
rule Detect_Env_Exfiltration {
    meta:
        description = "Detects skills reading .env files and sending to external URLs"
        author = "Protocol Zero"
    strings:
         = "cat ~/.env"
         = "grep -i key"
         = /curl -X POST.*\.env/
    condition:
        any of them
}

