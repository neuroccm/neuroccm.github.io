#!/usr/bin/env bash
#
# sync_from_uoft.sh
#
# Syncs content from UofTNeurology.github.io -> neuroccm.github.io
# Run from the neuroccm.github.io repo root.
#
# What it syncs:
#   1. Blog posts (_posts/) — copies new/updated posts, rewrites /blog/ links to /posts/
#   2. Initiatives page — mirrors UofTNeurology about.md content into initiatives.md
#   3. Contact page — mirrors UofTNeurology contact.md into contact.md
#
# Usage:
#   ./scripts/sync_from_uoft.sh [--dry-run]
#
# Requirements:
#   - Both repos must be cloned side-by-side under the same parent directory,
#     OR set UOFT_REPO to the UofTNeurology.github.io path.
#

set -euo pipefail

# ---------- Configuration ----------

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
NEUROCCM_REPO="$(cd "$SCRIPT_DIR/.." && pwd)"

# Default: sibling directory. Override with env var if needed.
UOFT_REPO="${UOFT_REPO:-$(cd "$NEUROCCM_REPO/.." && pwd)/UofTNeurology.github.io}"

DRY_RUN=false
[[ "${1:-}" == "--dry-run" ]] && DRY_RUN=true

# ---------- Helpers ----------

log()  { echo "[sync] $*"; }
warn() { echo "[sync] WARNING: $*" >&2; }

copy_if_newer() {
    local src="$1" dst="$2"
    if [[ ! -f "$dst" ]] || [[ "$src" -nt "$dst" ]]; then
        if $DRY_RUN; then
            log "(dry-run) Would copy: $(basename "$src")"
        else
            cp "$src" "$dst"
            log "Copied: $(basename "$src")"
        fi
        return 0
    fi
    return 1
}

# Rewrite UofTNeurology link patterns for the neuroccm site
rewrite_links() {
    local file="$1"
    if $DRY_RUN; then
        log "(dry-run) Would rewrite links in: $(basename "$file")"
        return
    fi
    # /blog/ -> /posts/  (post navigation links)
    sed -i '' 's|\](/blog/)|\](/posts/)|g' "$file" 2>/dev/null || \
    sed -i  's|\](/blog/)|\](/posts/)|g' "$file"
}

# ---------- Validation ----------

if [[ ! -d "$UOFT_REPO" ]]; then
    echo "Error: UofTNeurology repo not found at: $UOFT_REPO"
    echo "Set UOFT_REPO env var to the correct path."
    exit 1
fi

if [[ ! -f "$NEUROCCM_REPO/_config.yml" ]]; then
    echo "Error: Run this script from (or within) the neuroccm.github.io repo."
    exit 1
fi

log "Source:      $UOFT_REPO"
log "Destination: $NEUROCCM_REPO"
$DRY_RUN && log "*** DRY RUN — no files will be modified ***"
echo ""

# ---------- 1. Sync Blog Posts ----------

log "=== Syncing blog posts ==="

UOFT_POSTS="$UOFT_REPO/_posts"
NEUROCCM_POSTS="$NEUROCCM_REPO/_posts"

posts_synced=0
posts_skipped=0

if [[ -d "$UOFT_POSTS" ]]; then
    for src_post in "$UOFT_POSTS"/*.md; do
        [[ -f "$src_post" ]] || continue
        filename="$(basename "$src_post")"
        # Normalize filename: replace spaces with hyphens
        dst_filename="${filename// /-}"
        dst_post="$NEUROCCM_POSTS/$dst_filename"

        if copy_if_newer "$src_post" "$dst_post"; then
            rewrite_links "$dst_post"
            ((posts_synced++))
        else
            ((posts_skipped++))
        fi
    done
fi

log "Posts synced: $posts_synced, unchanged: $posts_skipped"
echo ""

# ---------- 2. Sync Initiatives (from UofT about.md) ----------

log "=== Syncing initiatives page ==="

UOFT_ABOUT="$UOFT_REPO/_pages/about.md"
NEUROCCM_INITIATIVES="$NEUROCCM_REPO/initiatives.md"

if [[ -f "$UOFT_ABOUT" ]]; then
    if $DRY_RUN; then
        log "(dry-run) Would rebuild initiatives.md from UofT about.md"
    else
        # Extract body content (everything after the closing --- of front matter)
        body=$(awk 'BEGIN{n=0} /^---$/{n++; next} n>=2{print}' "$UOFT_ABOUT")

        # Write with neuroccm front matter
        cat > "$NEUROCCM_INITIATIVES" <<'FRONTMATTER'
---
layout: page
title: Initiatives
permalink: /initiatives/
---

FRONTMATTER
        echo "$body" >> "$NEUROCCM_INITIATIVES"

        # Rewrite links
        rewrite_links "$NEUROCCM_INITIATIVES"

        log "Rebuilt initiatives.md from UofT about.md"
    fi
else
    warn "UofT about.md not found at: $UOFT_ABOUT"
fi
echo ""

# ---------- 3. Sync Contact Page ----------

log "=== Syncing contact page ==="

UOFT_CONTACT="$UOFT_REPO/_pages/contact.md"
NEUROCCM_CONTACT="$NEUROCCM_REPO/contact.md"

if [[ -f "$UOFT_CONTACT" ]]; then
    if $DRY_RUN; then
        log "(dry-run) Would rebuild contact.md from UofT contact.md"
    else
        # Extract body content
        body=$(awk 'BEGIN{n=0} /^---$/{n++; next} n>=2{print}' "$UOFT_CONTACT")

        # Write with neuroccm front matter
        cat > "$NEUROCCM_CONTACT" <<'FRONTMATTER'
---
layout: page
title: Contact
permalink: /contact/
comments: FALSE
---

FRONTMATTER
        echo "$body" >> "$NEUROCCM_CONTACT"

        log "Rebuilt contact.md from UofT contact.md"
    fi
else
    warn "UofT contact.md not found at: $UOFT_CONTACT"
fi
echo ""

# ---------- Summary ----------

log "=== Sync complete ==="
if ! $DRY_RUN; then
    log "Review changes with: git diff"
    log "To commit: git add -A && git commit -m 'Sync content from UofTNeurology'"
fi
