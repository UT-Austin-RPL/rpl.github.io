(() => {
  const input = document.getElementById("search-input");
  const results = document.getElementById("results-container");
  if (!input || !results) return;
  let papers = [];
  let loaded = false;
  let failed = false;

  const MAX_RESULTS = 30;

  function showMessage(message) {
    const item = document.createElement("li");
    item.className = "search-message";
    item.textContent = message;
    results.appendChild(item);
  }

  function renderPaper(paper) {
    const item = document.createElement("li");
    item.className = "search-result";
    const link = document.createElement("a");
    link.className = "search-result-title";
    link.href = paper.url;
    link.textContent = paper.title;
    item.appendChild(link);
    const venue = [paper.venue, paper.venue_date].filter(Boolean).join(", ");
    if (venue) {
      const meta = document.createElement("div");
      meta.className = "search-result-meta";
      meta.textContent = venue;
      item.appendChild(meta);
    }
    results.appendChild(item);
  }

  function render() {
    results.replaceChildren();
    const query = input.value.trim().toLocaleLowerCase();
    if (!query) return;
    if (failed) return showMessage("Search is unavailable. Browse the papers below.");
    if (!loaded) return showMessage("Loading papers...");
    const matches = papers.filter((paper) =>
      paper.title.toLocaleLowerCase().includes(query)
    );
    if (!matches.length) return showMessage("No results found");
    showMessage(matches.length > MAX_RESULTS
      ? `Showing the first ${MAX_RESULTS} of ${matches.length} papers`
      : `${matches.length} ${matches.length === 1 ? "paper" : "papers"} found`);
    matches.slice(0, MAX_RESULTS).forEach(renderPaper);
  }

  input.addEventListener("input", render);
  fetch(input.dataset.indexUrl)
    .then((response) => {
      if (!response.ok) throw new Error("Search index unavailable");
      return response.json();
    })
    .then((index) => { papers = index; loaded = true; render(); })
    .catch(() => { failed = true; render(); });
})();
