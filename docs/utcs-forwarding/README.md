# UTCS forwarding

The Apache configuration in `htaccess` belongs at `/v/filer5b/web-vhosts/rpl.cs.utexas.edu/html/.htaccess` on the UTCS server. It has no effect on GitHub Pages. `retire-sw.js` replaces the old root `/sw.js` to retire its homepage cache for returning visitors without removing course registrations or unrelated caches.

## Routing policy

- Keep `cs343_spring2021`, `cs343_spring2022`, `cs343_spring2023`, and `cs343h_fall2024` on UTCS, including all their descendants.
- Keep `/sw.js` and `/.well-known/acme-challenge/` local for service-worker retirement and certificate renewal.
- Redirect all other paths to `https://ut-austin-rpl.github.io/`, preserving paths and query strings, except for the explicit aliases below.
- Map three dated talk PDF filenames to their current filenames, the Talks directory to Research, duplicate `/page2/` through `/page48/` entries to the homepage, and the obsolete Facebook feed to the RSS feed.
- Use 302 while the future custom domain is undecided. This is an active production redirect, not a requirement to keep deploying the old website.

## Release sequence

1. Build and validate the GitHub repository, including the 28 paths in `_data/legacy_media_paths.yml`.
2. Push to `main`; verify the exact commit's Pages deployment succeeds and that the Media archive is publicly accessible.
3. Test the complete Apache configuration in a uniquely named temporary subdirectory. Confirm that course-prefix exclusions work and `/sw.js` remains a 200 response with `Cache-Control: no-store, max-age=0`.
4. Back up the current worker and root redirect configuration outside the public web root. Check current file hashes before replacing anything.
5. Publish `.htaccess` and then the retiring worker using same-filesystem renames. Do not delete the old website or course files.
6. Check redirects, old PDF aliases, all Media paths, course pages and assets, query strings, and a returning browser with the old worker installed. Roll back if verification fails.

## Operations and recovery

For the organization-root URL migration, deploy and verify the root GitHub site first, then replace only the UTCS `.htaccess` destinations. Back up the current `.htaccess` privately and check its hash before replacement. Preserve the already-installed retiring `sw.js`, course files, and all old website files. If verification fails, restore that release's `.htaccess` backup after confirming no intervening edits; do not restore the original pre-migration worker.

Keep UTCS DNS, HTTPS, the web host, and course files active. The GitHub Pages deployment cannot update UTCS. Avoid the old whole-site deployment scripts because they can overwrite `/sw.js`; deploy courses only into their own directories.

Store each release backup in a private directory outside `html`, with the original `sw.js`, whether `.htaccess` existed, and hashes of deployed files. For the initial rollout, no root `.htaccess` exists. To roll back that rollout, verify the live files still match the rollout, remove only its `.htaccess`, and restore the backed-up `sw.js` atomically. Never overwrite intervening changes without reviewing them. The original website files remain in place. A restored worker can be registered again by the original homepage.

When adding a course, add its prefix to both `htaccess` and `retire-sw.js` before publishing it. When a custom domain is ready, update GitHub Pages settings and `_config.yml`, validate that site, and then change the UTCS redirect destination to the final domain.

Apache reference: https://httpd.apache.org/docs/2.4/rewrite/flags.html
