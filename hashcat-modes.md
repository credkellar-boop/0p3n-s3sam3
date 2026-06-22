# Hashcat Fast GPU Cracking

High-performance hash cracking commands.

## Common Hash Modes (`-m`)
| Mode ID | Hash Type |
| :--- | :--- |
| `0` | MD5 |
| `1000` | NTLM |
| `1800` | sha512crypt |
| `5600` | NetNTLMv2 |

## Attack Modes (`-a`)
*   `-a 0` : Straight / Wordlist
*   `-a 3` : Brute-force / Mask

## Example Executions

### Dictionary Attack on NTLM hashes:
```bash
hashcat -a 0 -m 1000 hashes.txt /usr/share/wordlists/rockyou.txt
