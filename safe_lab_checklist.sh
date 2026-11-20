#!/usr/bin/env bash
# Documentation helper only. Does not scan, attack, or change any system.
set -euo pipefail
echo "BIT 309 isolated lab readiness checklist"
for item in \
  "Written lab authorization confirmed" \
  "Host-only or isolated container network confirmed" \
  "Synthetic accounts and data only" \
  "No public exposure of intentionally vulnerable targets" \
  "Backups/snapshots available" \
  "Test limits and stop conditions documented" \
  "Evidence directory created and sanitized"
do
  printf '[ ] %s\\n' "$item"
done
echo "Complete the checklist manually before running any approved lab test."
