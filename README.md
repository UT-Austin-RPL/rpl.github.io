# RPL website — GitHub Pages

This repository hosts the Robot Perception and Learning Lab website.

- Repository: `UT-Austin-RPL/rpl.github.io`
- Planned public URL: https://ut-austin-rpl.github.io/rpl.github.io/
- Generator: Jekyll, using the existing lab site's theme and content.
- Source snapshot: `UT-Austin-RPL/RPL-group-website` at `f1a0aba`, with the locally approved HumanoidMimicGen workshop removal included.

## Repository language

Use English for all repository documentation, website text, code and configuration comments, and commit messages.

## Migration scope

This migration includes all of `publications/` (posts, images, paper PDFs, and downloadable resources), `talks/`, `_data/people.yml`, the People page, and `images/members/`. It also retains the home, Research, Robots, Opportunities, and Teaching index pages, along with their styles and images.

The four course submodules, course files, historical Media posts, UTCS deployment scripts, and local working directories are not included in this phase. Course links on the Teaching index continue to point to UTCS. No submodule initialization or cleanup commands are needed.

Original papers, slides, and member images are copied byte for byte; PDFs are neither compressed nor rewritten. Build validation limits the published site to 950,000,000 bytes to leave headroom below the GitHub Pages 1 GB limit. Exceeding this budget stops deployment; it never deletes content automatically.

## Local preview

Use Ruby 3.2.4, as specified in `.ruby-version`, and Bundler 2.4.19:

```sh
gem install bundler -v 2.4.19
bundle install
bundle exec jekyll serve
```

Open http://127.0.0.1:4000/rpl.github.io/ . Keep the project subpath during local preview so GitHub Pages path issues are caught early.

Build and validate:

```sh
JEKYLL_ENV=production bundle exec jekyll build
bundle exec ruby scripts/verify_site.rb
```

Validation checks internal links and assets across generated pages, the publication search index, RSS, the sitemap, canonical URLs, published size, and course exclusions. It does not make bulk requests to external publication websites.

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
- Images and internal links: use `relative_url`. For full URLs, such as canonical and RSS links, use `absolute_url`. Avoid hardcoding the GitHub project subpath.
- Dependencies: commit `Gemfile.lock`. It includes both macOS and Linux platforms so Actions installs the same dependency versions.

## UTCS redirects while courses remain on UTCS

Redirects from the old domain must be configured by the UTCS administrators; this repository alone cannot implement them. Verify the GitHub-hosted site before enabling redirects.

**Do not redirect the entire old site unconditionally.** The following content remains on UTCS during this phase and must be excluded first:

- `/cs343_spring2021/`
- `/cs343_spring2022/`
- `/cs343_spring2023/`
- `/cs343h_fall2024/`
- `/media/` and any other archived content not migrated into this repository.

Redirect only migrated pages and directories, such as the home page, `/people/`, `/publications/`, `/research/`, `/talks/`, `/images/`, `/robots/`, `/opportunities/`, `/postdoc-openings/`, `/teaching/`, and required style assets. Preserve query parameters.

Use `https://ut-austin-rpl.github.io/rpl.github.io/<original-path>` as the temporary destination. A 302 redirect is appropriate until the custom domain is finalized. Once the final domain is stable, update redirects to point directly to it.

Historical PDF filenames need explicit mappings that take precedence over general directory redirects:

- `2026_06_03_building_generalist_humanoid_robots.pdf` → `building_generalist_humanoid_robots.pdf`
- `2025_10_31_towards_generalist_humanoid_robots.pdf` → `towards_generalist_humanoid_robots.pdf`
- `2024_11_04_data_pyramid_and_data_flywheel_for_robotic_foundation_models.pdf` → `data_pyramid_and_data_flywheel_for_robotic_foundation_models.pdf`

Configure these PDF mappings as HTTP redirects on the old server. GitHub Pages does not execute Apache `.htaccess` files.

## Add a custom domain later

Once the domain is chosen, add it in GitHub Pages settings and configure DNS and HTTPS. Then update these two fields in `_config.yml`:

```yaml
url: "https://your-new-domain.example"
baseurl: ""
```

Rebuild, validate, and deploy. Update UTCS redirects to point directly to the new domain while preserving course-path exclusions. Course links still depend on UTCS hosting until a separate course migration is completed.
