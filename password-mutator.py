# Simple Python script to generate custom password mutations for John/Hashcat
import sys

if len(sys.argv) < 2:
    print("Usage: python password-mutator.py <base_word>")
    sys.exit(1)

base = sys.argv[1]
mutations = []

# Common variations used in corporate environments
years = ['2024', '2025', '2026']
specials = ['!', '!', '@', '#', '123']

# Generate combinations
for year in years:
    for special in specials:
        mutations.append(f"{base.capitalize()}{year}{special}")
        mutations.append(f"{base.lower()}{year}{special}")
        mutations.append(f"{special}{base.capitalize()}{year}")

# Print unique results to stdout (can be redirected to a wordlist file)
for item in set(mutations):
    print(item)
  
