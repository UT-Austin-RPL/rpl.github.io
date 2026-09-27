"use strict";

// Retire only the old main-site worker; do not touch course registrations.
self.addEventListener("install", function (event) {
  event.waitUntil(self.skipWaiting());
});

self.addEventListener("activate", function (event) {
  event.waitUntil((async function () {
    const names = await caches.keys();
    await Promise.all(names.filter(name => name.startsWith("pixyll2-")).map(async name => {
      const cache = await caches.open(name);
      const requests = await cache.keys();
      const containsOldHomepage = requests.some(request => {
        const url = new URL(request.url);
        return url.origin === self.location.origin &&
          (url.pathname === "/" || url.pathname === "/index.html");
      });
      // Preserve unrelated caches, including any course cache with a similar name.
      if (containsOldHomepage) await caches.delete(name);
    }));

    await self.clients.claim();
    await self.registration.unregister();
    const windows = await self.clients.matchAll({ type: "window" });
    await Promise.all(windows.map(client => {
      const url = new URL(client.url);
      const course = /^\/(?:cs343_spring2021|cs343_spring2022|cs343_spring2023|cs343h_fall2024)(?:\/|$)/.test(url.pathname);
      if (url.origin === self.location.origin && !course) {
        // Revisit the old URL so the server applies the canonical redirect.
        return client.navigate(client.url).catch(() => {});
      }
    }));
  })());
});

// No fetch handler: remaining clients use the network normally.
