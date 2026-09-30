"use strict";
const assert = require("node:assert/strict");
const fs = require("node:fs");
const path = require("node:path");
const vm = require("node:vm");
const script = fs.readFileSync(path.join(__dirname, "../js/legacy-project-redirect.js"), "utf8");
const origin = "https://ut-austin-rpl.github.io";
const cases = [
  ["/rpl.github.io", "/"],
  ["/rpl.github.io/", "/"],
  ["/rpl.github.io/people/", "/people/"],
  ["/rpl.github.io/publications/?q=humanoid#results", "/publications/?q=humanoid#results"],
  ["/rpl.github.io/talks/building_generalist_humanoid_robots.pdf#page=28", "/talks/building_generalist_humanoid_robots.pdf#page=28"],
  ["/rpl.github.io/images/a%20b.png", "/images/a%20b.png"],
  ["/people/missing/", null],
  ["/OKAMI/missing/", null],
  ["/404.html", null],
  ["/rpl.github.io-typo/", null],
  ["/rpl.github.io//example.com/", null],
  ["/rpl.github.io/%2fexample.com/", null],
  ["/rpl.github.io/%5cexample.com/", null],
  ["/rpl.github.io/rpl.github.io/people/", null],
];
for (const [source, expected] of cases) {
  let destination = null;
  vm.runInNewContext(script, { URL, window: { location: {
    href: origin + source, replace(value) { destination = value; }
  } } });
  assert.equal(destination, expected === null ? null : origin + expected, source);
  if (destination) assert.equal(new URL(destination).origin, origin, "Redirect must stay on this origin");
}
console.log(`Legacy project URL redirects passed: ${cases.length} cases.`);
