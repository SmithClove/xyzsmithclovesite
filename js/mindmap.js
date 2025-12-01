// Archive Collection Interactive Mind Map
// Vanilla JS implementation for GitHub Pages

const mindmapData = {
  name: "Archive Collection",
  children: [
    {
      name: "Paulina Borsook",
      description: "Tech critic who saw it coming",
      children: [
    {
      name: "paulinaborsook.com",
      children: [
        {
          name: "Essays",
          children: [
            {
              name: "Tech Culture",
              children: [
                { name: "Cyberselfish - Mother Jones 1996", url: "https://paulinaborsook.com/PDF-disk-1/Cyberselfish_Mother%20Jones.pdf" },
                { name: "Cyberselfish Redux 2000", url: "https://paulinaborsook.com/PDF-disk-1/Cyberselfish%20Redux_Mother%20Jones.pdf" },
                { name: "High-tech Scrooges - CIO 2001", url: "https://paulinaborsook.com/Doco/CIO.pdf" },
                { name: "Why high-tech doesn't give a damn", url: "https://paulinaborsook.com/Doco/msnbc.pdf" },
                { name: "Bionomics 101 - Feed", url: "https://paulinaborsook.com/Doco/Bionimics.pdf" },
                { name: "Marketing Freedom - Feed", url: "https://paulinaborsook.com/Doco/Marketing%20Freedom.pdf" },
                { name: "Neophilia - Princeton 2016", url: "https://paulinaborsook.com/PDF-disk-1/Neophilia%20and%20Human%20Nature.pdf" },
                { name: "Google Books Objection 2010", url: "http://www.paulinaborsook.com/PDF-disk-1/Published%20Letter%20to%20Chin.pdf" },
                { name: "Not Your Fathers Cultural War", url: "https://paulinaborsook.com/Doco/Unconscious_Agenda.pdf" }
              ]
            },
            {
              name: "Art & Culture",
              children: [
                { name: "California Dreamin - Artbyte", url: "https://paulinaborsook.com/Doco/artbyte.pdf" },
                { name: "Real Time - SJ Mercury", url: "https://paulinaborsook.com/Doco/Virtuality.pdf" },
                { name: "Byzantium 550 AD", url: "https://paulinaborsook.com/External/Byzantium_550_AD.html" }
              ]
            },
            {
              name: "Radio/TV",
              children: [
                { name: "Focus on Community - PRI", url: "https://paulinaborsook.com/Doco/focus_on_community.html" },
                { name: "Culture of Flip and Flee", url: "https://paulinaborsook.com/Doco/flip_and_flee.html" },
                { name: "Aboriginals and Colonizers", url: "https://paulinaborsook.com/Doco/aboriginals_and_colonizers.html" }
              ]
            },
            {
              name: "Book Reviews",
              children: [
                { name: "Taming the User-Hostile Computer", url: "https://paulinaborsook.com/Doco/bookstamingusr.pdf" },
                { name: "Byte Blight - University Business", url: "https://paulinaborsook.com/Doco/byteblight.pdf" }
              ]
            }
          ]
        },
        {
          name: "Ephemera",
          children: [
            { name: "A-Life Gamers", url: "https://paulinaborsook.com/alifegamers.html" },
            { name: "Rocket Fall to Earth", url: "https://paulinaborsook.com/Doco/Rocket%20Fall%20To%20Earth.html" },
            { name: "Tech & Culture Syllabus", url: "https://paulinaborsook.com/Doco/Ephemera%20Syllabus.html" },
            { name: "SF Public Art Proposal", url: "https://paulinaborsook.com/Doco/Calif-Prop.pdf" }
          ]
        },
        {
          name: "Other Sections",
          children: [
            { name: "Aesclepion", url: "http://www.paulinaborsook.com/Aesclepion/Aesclepion.html" },
            { name: "St B and B", url: "http://www.paulinaborsook.com/StBandB/index.html" },
            { name: "Industrial Disease", url: "https://www.paulinaborsook.com/Doco/sickofitallindustrialdisease.pdf" }
          ]
        }
      ]
    },
    {
      name: "cyberselfish.com",
      children: [
        { name: "Home - Book Site", url: "https://www.cyberselfish.com/" },
        { name: "Buy the Book", url: "https://www.cyberselfish.com/buyit.html" }
      ]
    },
    {
      name: "mail.paulinaborsook.com",
      children: [
        { name: "Cyberselfish Essay", url: "https://mail.paulinaborsook.com/cyberselfish-essay.html" },
        { name: "Book Reviews", url: "https://mail.paulinaborsook.com/reviews22.html" },
        { name: "About/Appearances", url: "https://mail.paulinaborsook.com/about.html" },
        { name: "Book Excerpts", url: "https://mail.paulinaborsook.com/excerpts.html" },
        { name: "Time Warp Review", url: "https://mail.paulinaborsook.com/time-warp.html" }
      ]
    },
    {
      name: "mylifeasaghost.org",
      children: [
        { name: "Art Project Home", url: "https://mylifeasaghost.org/" }
      ]
    },
    {
      name: "External Backlinks",
      children: [
        {
          name: "Major Press (2025)",
          children: [
            { name: "NYT Profile - David Streitfeld", url: "https://www.nytimes.com/2025/11/27/technology/writer-silicon-valley-criticism.html", meta: "Nov 2025" },
            { name: "Nerd Reich Podcast", url: "https://www.thenerdreich.com/paulina-borsook-saw-tech-fascism-coming/", meta: "Gil Duran, Oct 2025" }
          ]
        },
        {
          name: "Academic",
          children: [
            { name: "Yale JOLT - Speech Transcript", url: "https://yjolt.org/cyberselfish-ravers-guilders-cyberpunks-and-other-silicon-valley-life-forms" },
            { name: "UC Berkeley OLLI Event", url: "https://events.berkeley.edu/OLLI/event/299158-summer-short-every-day-computers-are-making-people" }
          ]
        },
        {
          name: "Archives",
          children: [
            { name: "transaction.net Fansite", url: "https://www.transaction.net/people/paulina.html" }
          ]
        },
        {
          name: "Publications",
          children: [
            { name: "Mother Jones" },
            { name: "Wired Magazine" },
            { name: "Salon" },
            { name: "Feed" },
            { name: "San Jose Mercury News" },
            { name: "Written By (WGA)" },
            { name: "Huffington Post" },
            { name: "Leonardo Journal" }
          ]
        }
      ]
    }
      ]
    }
    // Additional archives can be added here as siblings to Paulina Borsook
  ]
};

class MindMap {
  constructor(containerId) {
    this.container = document.getElementById(containerId);
    this.expanded = { "Archive Collection": true };
    this.searchTerm = '';
    this.init();
  }

  init() {
    this.render();
    this.bindEvents();
  }

  getAllNodeNames(node = mindmapData) {
    let names = [node.name];
    if (node.children) {
      node.children.forEach(child => {
        names = names.concat(this.getAllNodeNames(child));
      });
    }
    return names;
  }

  expandAll() {
    const allNames = this.getAllNodeNames();
    allNames.forEach(name => this.expanded[name] = true);
    this.render();
  }

  collapseAll() {
    this.expanded = { "Archive Collection": true };
    this.render();
  }

  toggleNode(name) {
    this.expanded[name] = !this.expanded[name];
    this.render();
  }

  searchNodes(term) {
    if (!term.trim()) return [];
    const results = [];
    const searchInNode = (node, path = []) => {
      const currentPath = [...path, node.name];
      if (node.name.toLowerCase().includes(term.toLowerCase())) {
        results.push({ node, path: currentPath });
      }
      if (node.children) {
        node.children.forEach(child => searchInNode(child, currentPath));
      }
    };
    searchInNode(mindmapData);
    return results;
  }

  expandToNode(path) {
    path.forEach(name => this.expanded[name] = true);
    this.render();
  }

  renderNode(node, depth = 0, siblingIndex = 0) {
    const hasChildren = node.children && node.children.length > 0;
    const isExpanded = this.expanded[node.name];
    const isRoot = depth === 0;

    const nodeEl = document.createElement('div');
    nodeEl.className = `mindmap-node-container ${isRoot ? 'root' : ''}`;
    nodeEl.style.setProperty('--depth', depth);

    const nodeContent = document.createElement('div');
    nodeContent.className = `mindmap-node ${hasChildren ? 'has-children' : ''} ${node.url ? 'has-link' : ''} ${isExpanded ? 'expanded' : ''}`;
    nodeContent.style.animationDelay = `${depth * 0.1 + siblingIndex * 0.05}s`;

    const textSpan = document.createElement('span');
    textSpan.className = 'node-text';
    textSpan.textContent = node.name;
    nodeContent.appendChild(textSpan);

    if (node.meta) {
      const metaSpan = document.createElement('span');
      metaSpan.className = 'node-meta';
      metaSpan.textContent = node.meta;
      nodeContent.appendChild(metaSpan);
    }

    if (hasChildren) {
      const toggleIcon = document.createElement('span');
      toggleIcon.className = 'toggle-icon';
      toggleIcon.textContent = isExpanded ? '−' : '+';
      nodeContent.appendChild(toggleIcon);
    }

    if (node.url) {
      const linkIcon = document.createElement('span');
      linkIcon.className = 'link-icon';
      linkIcon.textContent = '↗';
      nodeContent.appendChild(linkIcon);
    }

    nodeContent.addEventListener('click', (e) => {
      e.stopPropagation();
      if (node.url) {
        window.open(node.url, '_blank');
      } else if (hasChildren) {
        this.toggleNode(node.name);
      }
    });

    nodeEl.appendChild(nodeContent);

    if (hasChildren && isExpanded) {
      const childrenContainer = document.createElement('div');
      childrenContainer.className = 'children-container';
      node.children.forEach((child, index) => {
        childrenContainer.appendChild(this.renderNode(child, depth + 1, index));
      });
      nodeEl.appendChild(childrenContainer);
    }

    return nodeEl;
  }

  render() {
    this.container.innerHTML = `
      <div class="mindmap-controls">
        <button class="mindmap-btn" id="expandAllBtn">[EXPAND ALL]</button>
        <button class="mindmap-btn" id="collapseAllBtn">[COLLAPSE ALL]</button>
      </div>
      <div class="mindmap-search-container">
        <input type="text" class="mindmap-search" id="mindmapSearch" placeholder="Search nodes..." value="${this.searchTerm}">
        <div class="search-results" id="searchResults"></div>
      </div>
      <div class="mindmap-tree" id="mindmapTree"></div>
      <div class="mindmap-legend">
        <div class="legend-item"><span class="legend-icon">+</span> Click to expand</div>
        <div class="legend-item"><span class="legend-icon">↗</span> External link</div>
        <div class="legend-item"><span class="legend-icon">−</span> Click to collapse</div>
      </div>
    `;

    const treeContainer = document.getElementById('mindmapTree');
    treeContainer.appendChild(this.renderNode(mindmapData));

    this.bindEvents();
  }

  bindEvents() {
    document.getElementById('expandAllBtn')?.addEventListener('click', () => this.expandAll());
    document.getElementById('collapseAllBtn')?.addEventListener('click', () => this.collapseAll());
    
    const searchInput = document.getElementById('mindmapSearch');
    const searchResults = document.getElementById('searchResults');
    
    searchInput?.addEventListener('input', (e) => {
      this.searchTerm = e.target.value;
      const results = this.searchNodes(this.searchTerm);
      
      if (results.length > 0 && this.searchTerm.trim()) {
        searchResults.innerHTML = results.map((result, i) => `
          <div class="search-result" data-index="${i}">
            <div class="search-result-name">${result.node.name}</div>
            <div class="search-result-path">${result.path.slice(0, -1).join(' → ')}</div>
          </div>
        `).join('');
        searchResults.style.display = 'block';
        
        searchResults.querySelectorAll('.search-result').forEach((el, i) => {
          el.addEventListener('click', () => {
            this.expandToNode(results[i].path);
            this.searchTerm = '';
            searchResults.style.display = 'none';
          });
        });
      } else {
        searchResults.style.display = 'none';
      }
    });
  }
}

// Initialize when DOM is ready
document.addEventListener('DOMContentLoaded', () => {
  if (document.getElementById('mindmap-container')) {
    new MindMap('mindmap-container');
  }
});
