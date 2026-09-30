# RPL website — GitHub Pages

This repository hosts the Robot Perception and Learning Lab website.

- Repository: `UT-Austin-RPL/ut-austin-rpl.github.io`
- Public URL: https://ut-austin-rpl.github.io/
- Generator: Jekyll, using the existing lab site's theme and content.
- Source snapshot: `UT-Austin-RPL/RPL-group-website` at `f1a0aba`, with the locally approved HumanoidMimicGen workshop removal included.

## Repository language

Use English for all repository documentation, website text, code and configuration comments, and commit messages.

## Migration scope

This migration includes all of `publications/` (posts, images, paper PDFs, and downloadable resources), `talks/`, `_data/people.yml`, the People page, and `images/members/`. It also retains the home, Research, Robots, Opportunities, and Teaching index pages, along with their styles and images.

The Media archive includes all 18 historical press records and their 10 publisher images, preserving their original URLs. It is linked from the Research page. The four course submodules, course files, UTCS deployment scripts, and local working directories are not included. Course links on the Teaching index continue to point to UTCS. No submodule initialization or cleanup commands are needed.

Original papers, slides, and member images are copied byte for byte; PDFs are neither compressed nor rewritten. Build validation limits the published site to 950,000,000 bytes to leave headroom below the GitHub Pages 1 GB limit. Exceeding this budget stops deployment; it never deletes content automatically.

## Local preview

Use Ruby 3.2.4, as specified in `.ruby-version`, and Bundler 2.4.19:

```sh
gem install bundler -v 2.4.19
bundle install
bundle exec jekyll serve
```

Open http://127.0.0.1:4000/ . The organization website is served at the root, so `baseurl` must remain empty.

Build and validate:

```sh
JEKYLL_ENV=production bundle exec jekyll build
bundle exec ruby scripts/verify_site.rb
bundle exec ruby scripts/test_publication_sort.rb
bundle exec ruby scripts/test_site_url_scope.rb
node scripts/test_legacy_redirect.cjs
```

Validation checks internal links and assets across generated pages, the publication search index, RSS, the sitemap, canonical URLs, published size, course exclusions, and every legacy Media article and image path listed in `_data/legacy_media_paths.yml`. It does not make bulk requests to external publication websites.

Separate GitHub Pages project sites on the same organization host are listed in `_data/github_pages_projects.yml`. Only absolute links to those explicit project paths are treated as external. Unknown paths and relative links must still resolve inside this website; main-site files must not collide with those project paths.

## Organization-root URL and old bookmarks

GitHub serves the organization homepage from the repository named `<organization>.github.io`. Renaming the repository alone does not update Jekyll's asset URLs: `_config.yml` must use `url: "https://ut-austin-rpl.github.io"` and `baseurl: ""`.

The custom `404.html` page recognizes the former `/rpl.github.io/` prefix and redirects browsers to the corresponding root URL, preserving the query string and fragment. This includes browser-opened PDF bookmarks. It does not redirect unrelated project websites or ordinary missing pages.

This is a JavaScript compatibility fallback, not an HTTP 301/302: old URLs initially return 404. Automated PDF downloaders, crawlers, embedded resources, and browsers without JavaScript should use the new direct URLs. Share `https://ut-austin-rpl.github.io/talks/...` for slides. GitHub Pages cannot implement Apache-style server redirects, and the old project URLs are not automatically redirected by a repository rename.

The local checkout folder may remain named `rpl.github.io`; only its Git remote needs to point to `git@github.com:UT-Austin-RPL/ut-austin-rpl.github.io.git`. No organization rename or custom domain is part of this change. Before any future organization rename, plan the root repository name, canonical URL, project links, and UTCS redirects together.

## Enable GitHub Pages for the first time

1. Create the initial commit in this repository and push it to `main`.
2. In the GitHub repository, open **Settings → Pages → Build and deployment → Source** and select **GitHub Actions**.
3. Run **Actions → Build and deploy GitHub Pages**. If the first push triggered a failed run before Pages was enabled, enable Pages and rerun the workflow.
4. Confirm that the workflow succeeds and that the public home, People, Publications, and Research pages and key PDFs are accessible.

No custom domain is configured yet. Do not copy the old repository's `CNAME`, which contains the unrelated domain `yukezhu.com`. Custom GitHub Actions deployments use the domain configured in Pages settings and do not require that file.

Subsequent pushes to `main` automatically build, validate, and deploy the site. Pull requests only build and validate. The workflow does not connect to UTCS, require SSH keys, or fetch course submodules.

## Common content updates

- Publications: `publications/_posts/` and `publications/images/`.
- People: `_data/people.yml` and `images/members/`.
- Talks: `talks/` and `_pages/research.md`.
- Media archive: `media/_posts/`, `media/images/`, and `media/index.html`.
- Images and internal links: use `relative_url`. For full URLs, such as canonical and RSS links, use `absolute_url`. Avoid hardcoding the GitHub project subpath.
- Dependencies: commit `Gemfile.lock`. It includes both macOS and Linux platforms so Actions installs the same dependency versions.

### Publication ordering

The Publications page uses one deterministic ordering rule: calendar date descending, full title A–Z (case-insensitive) within the same day, then source path ascending to break exact ties. Time of day does not affect the order within a date.

An explicit front-matter `date` overrides the date in the filename. To move a paper ahead of entries dated `2026-11-09`, set `date: 2026-11-10`, as done for EgoScale. Keep its filename and explicit `permalink` unchanged to preserve existing URLs. The displayed conference label comes from `pub_info_date`, not the sorting date.

Changing `date` also changes the post date used by Jekyll, including the RSS feed and search index; it is not a separate highlight flag.

After building, run `bundle exec ruby scripts/test_publication_sort.rb` to check tie-breaking, shuffled inputs, and the order of all entries in the generated Publications page. The Pages workflow runs this check before deployment.

## UTCS redirects while courses remain on UTCS

Redirects are configured in the UTCS web root, not by GitHub Pages. Apache `.htaccess` support has been verified with an isolated test. See `docs/utcs-forwarding/` for the configuration and operating instructions. Publish and verify the GitHub-hosted archives before enabling redirects.

**Do not redirect the entire old site unconditionally.** The following content remains on UTCS during this phase and must be excluded first:

- `/cs343_spring2021/`
- `/cs343_spring2022/`
- `/cs343_spring2023/`
- `/cs343h_fall2024/`

All other website content redirects to GitHub, including Media, talks, images, and styles. The only technical exceptions are the retiring root service worker (`/sw.js`) and HTTPS certificate challenges (`/.well-known/acme-challenge/`). Query parameters are preserved. Keep UTCS hosting, DNS, and HTTPS active for courses and redirects.

The 47 historical pagination URLs (`/page2/` through `/page48/`) contained exactly the same main content as the homepage; redirect them to the new homepage. Redirect the obsolete `/fb-instant-articles.xml` feed to `/feed.xml`, and the `/talks/` directory entry to the Research page, where the talks are listed.

Use `https://ut-austin-rpl.github.io/<original-path>` as the destination after the root site is verified live. A 302 redirect is appropriate until the custom domain is finalized. Once the final domain is stable, update redirects to point directly to it.

Historical PDF filenames need explicit mappings that take precedence over general directory redirects:

- `2026_06_03_building_generalist_humanoid_robots.pdf` → `building_generalist_humanoid_robots.pdf`
- `2025_10_31_towards_generalist_humanoid_robots.pdf` → `towards_generalist_humanoid_robots.pdf`
- `2024_11_04_data_pyramid_and_data_flywheel_for_robotic_foundation_models.pdf` → `data_pyramid_and_data_flywheel_for_robotic_foundation_models.pdf`

Configure these PDF mappings as HTTP redirects on the old server. GitHub Pages does not execute Apache `.htaccess` files.

After forwarding is enabled, update the main website only through this GitHub repository. Do not run the old whole-site UTCS deployment scripts: they could overwrite the retiring service worker. Course deployments should target only their respective course directories.

## Add a custom domain later

Once the domain is chosen, add it in GitHub Pages settings and configure DNS and HTTPS. Then update these two fields in `_config.yml`:

```yaml
url: "https://your-new-domain.example"
baseurl: ""
```

Rebuild, validate, and deploy. Update UTCS redirects to point directly to the new domain while preserving course-path exclusions. Course links still depend on UTCS hosting until a separate course migration is completed.
