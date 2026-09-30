// GitHub Pages does not redirect project URLs after a repository rename.
// This browser-only fallback preserves bookmarks, including PDF links.
(function () {
  "use strict";
  var prefix = "/rpl.github.io";
  var current = new URL(window.location.href);
  if (current.pathname !== prefix && !current.pathname.startsWith(prefix + "/")) return;

  var path = current.pathname.slice(prefix.length) || "/";
  // Never turn malformed legacy paths into a protocol-relative redirect or loop.
  if (path.startsWith("//") || /%2f|%5c|\\/i.test(path) ||
      path === prefix || path.startsWith(prefix + "/")) return;
  current.pathname = path;
  window.location.replace(current.href);
}());
