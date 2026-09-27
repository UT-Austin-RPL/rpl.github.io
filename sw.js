---
layout: null
---
// Scope cache names to this project; other lab projects share github.io.
const CACHE_PREFIX = "rpl-" + {{ site.baseurl | default: "/" | jsonify }} + "-";
const CACHE_NAME = CACHE_PREFIX + "{{ site.time | date: '%Y%m%d%H%M%S' }}";
const SITE_ROOT = new URL({{ "/" | relative_url | jsonify }}, self.location.origin);

self.addEventListener("install", (event) => {
  event.waitUntil(caches.open(CACHE_NAME).then((cache) =>
    cache.addAll([{{ "/css/pixyll.css" | relative_url | jsonify }}])
  ));
});

self.addEventListener("activate", (event) => {
  event.waitUntil(caches.keys().then((keys) => Promise.all(
    keys.filter((key) => key.startsWith(CACHE_PREFIX) && key !== CACHE_NAME)
      .map((key) => caches.delete(key))
  )).then(() => self.clients.claim()));
});

// Always fetch pages and PDFs from the network so updates remain visible.
// Cache only this project's stylesheet; do not intercept other projects.
self.addEventListener("fetch", (event) => {
  const url = new URL(event.request.url);
  if (event.request.method !== "GET" || url.origin !== SITE_ROOT.origin ||
      url.pathname !== SITE_ROOT.pathname + "css/pixyll.css") return;
  event.respondWith(fetch(event.request).then((response) => {
    if (response.ok) {
      const copy = response.clone();
      event.waitUntil(caches.open(CACHE_NAME).then((cache) =>
        cache.put(event.request, copy)
      ));
    }
    return response;
  }).catch(() => caches.match(event.request)));
});
