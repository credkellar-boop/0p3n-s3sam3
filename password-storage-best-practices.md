# Secure Password Hashing and Storage Guidelines

How to properly secure user credentials in storage to resist high-speed offline cracking attempts.

## 1. Use Cryptographic Salts
* **Never store plain-text passwords or simple unsalted hashes.**
* Every password must be combined with a unique, cryptographically random string (a salt) before hashing. This defeats the use of precomputed lookup tables (rainbow tables).

## 2. Implement Adaptive Hashing Algorithms
Avoid fast algorithms like MD5, SHA-1, or SHA-256 for password storage. Instead, utilize computationally expensive, memory-hard algorithms designed to slow down hardware acceleration (like GPUs and ASICs):

* **Argon2id:** The current industry standard for password hashing.
* **bcrypt:** A highly reliable, time-tested option with an adjustable work factor.
* **scrypt:** Designed to require significant memory resources, making hardware-parallelized cracking inefficient.
