#!/usr/bin/env bash
set -euo pipefail
echo "Verification du projet..."
[ -f requirements-dev.txt ] || { echo "requirements-dev.txt manquant" >&2; exit 1; }
[ -f tests/test_smoke.py ] || { echo "tests/test_smoke.py manquant" >&2; exit 1; }
[ -f .github/workflows/ci.yml ] || { echo ".github/workflows/ci.yml manquant" >&2; exit 1; }
[ -f Dockerfile ] || { echo "Dockerfile manquant" >&2; exit 1; }
python -m pytest -q
echo "Projet OK"