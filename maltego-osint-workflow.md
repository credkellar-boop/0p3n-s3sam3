# Maltego OSINT Investigation Workflow

A structural guide for mapping out infrastructure using Maltego transforms.

## Phase 1: Footprinting the Domain
1. Drag a **Domain** entity onto the canvas.
2. Enter the target domain (e.g., `target.com`).
3. Right-click and run: **To Website [Using Search Engine]** and **To DNS Name [Schema]**.

## Phase 2: Resolving Infrastructure
1. Select the newly discovered DNS Names.
2. Run transform: **To IP Address [DNS]**.
3. Select the IP addresses and run: **To Netblock [Route Views]** to find the hosting provider's IP range.

## Phase 3: Entity Extraction
1. Select the original domain.
2. Run transform: **To Email Addresses [From Search Engine]**.
3. Select the discovered email addresses and run: **To Person** to identify potential social engineering targets.
4. 
