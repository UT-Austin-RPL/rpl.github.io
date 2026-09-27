(() => {
  const input = document.getElementById("search-input");
  const results = document.getElementById("results-container");
  if (!input || !results) return;
  let papers = [];
  let loaded = false;
  let failed = false;

  function showMessage(message) {
    const item = document.createElement("li");
    item.textContent = message;
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
    ).slice(0, 30);
    if (!matches.length) return showMessage("No results found");
    matches.forEach((paper) => {
      const item = document.createElement("li");
      const link = document.createElement("a");
      link.href = paper.url;
      link.textContent = paper.title;
      item.appendChild(link);
      results.appendChild(item);
    });
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
