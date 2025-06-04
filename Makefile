.PHONY: all clean dev build deploy glitch starfield noise scrolleffects vibey page help

# Default variables
SRC_DIR = src
DIST_DIR = .
JS_DIR = js
CSS_DIR = css
ASSETS_DIR = assets

# Default target - builds everything
all: build

# Clean output directories
clean:
	@echo "Cleaning build artifacts..."
	rm -rf $(DIST_DIR)/$(JS_DIR)
	rm -rf $(DIST_DIR)/$(CSS_DIR)
	mkdir -p $(DIST_DIR)/$(JS_DIR)
	mkdir -p $(DIST_DIR)/$(CSS_DIR)

# Setup directories
setup:
	@echo "Setting up project structure..."
	mkdir -p $(SRC_DIR)
	mkdir -p $(DIST_DIR)/$(JS_DIR)
	mkdir -p $(DIST_DIR)/$(CSS_DIR)
	mkdir -p $(ASSETS_DIR)

# Create JavaScript for starfield effect
starfield: setup
	@echo "Creating WebGL-style starfield (pure canvas, no heavyweight libs)..."
	@echo 'class Starfield {' > $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  constructor(canvas, options = {}) {' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.canvas = canvas;' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.ctx = canvas.getContext("2d");' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.stars = [];' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.density = options.density || 100;' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.speed = options.speed || 0.05;' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.maxSize = options.maxSize || 2;' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.color = options.color || "#ffffff";' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.width = canvas.width;' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.height = canvas.height;' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.init();' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  }' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  init() {' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    // Create stars' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    for (let i = 0; i < this.density; i++) {' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '      this.stars.push({' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '        x: Math.random() * this.width,' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '        y: Math.random() * this.height,' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '        size: Math.random() * this.maxSize,' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '        speed: Math.random() * this.speed + 0.1' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '      });' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    }' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.animate();' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  }' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  draw() {' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.ctx.clearRect(0, 0, this.width, this.height);' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.ctx.fillStyle = this.color;' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    ' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    for (let star of this.stars) {' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '      this.ctx.beginPath();' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '      this.ctx.arc(star.x, star.y, star.size, 0, Math.PI * 2);' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '      this.ctx.fill();' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '      ' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '      // Move star' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '      star.y += star.speed;' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '      ' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '      // Reset star if it goes off screen' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '      if (star.y > this.height) {' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '        star.y = 0;' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '        star.x = Math.random() * this.width;' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '      }' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    }' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  }' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  animate() {' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    this.draw();' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    requestAnimationFrame(() => this.animate());' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  }' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '}' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '// Initialize on load' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo 'document.addEventListener("DOMContentLoaded", () => {' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  const canvas = document.createElement("canvas");' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  canvas.width = window.innerWidth;' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  canvas.height = window.innerHeight;' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  canvas.style.position = "fixed";' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  canvas.style.top = "0";' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  canvas.style.left = "0";' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  canvas.style.zIndex = "-1";' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  document.body.prepend(canvas);' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  ' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  new Starfield(canvas, {' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    density: 150,' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    speed: 0.08,' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    maxSize: 2,' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '    color: "#ffffff"' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '  });' >> $(DIST_DIR)/$(JS_DIR)/starfield.js
	@echo '});' >> $(DIST_DIR)/$(JS_DIR)/starfield.js

# Create noise and gradient effects
noise: setup
	@echo "Creating noise overlay + animated gradient pulse..."
	@echo '/* Noise overlay */' > $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo 'body::before {' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  content: "";' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  position: fixed;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  top: 0;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  left: 0;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  width: 100%;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  height: 100%;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AkbFQkwJTDi5AAAABl0RVh0Q29tbWVudABDcmVhdGVkIHdpdGggR0lNUFeBDhcAAACaSURBVGje7dixDoJAEEXRN5sQY+3//5qN1mhjDMEgFltgsruZc8rXXHgDAAAAAAAAwAdKvJSS8nN+PdvznPO+935sra1ZXn+mQ0SELdXvqZ2cc9n3/VRrvV1DjKEtIdZae5Zl+fi7/8EQIcQjpZS3bduNMR6v1/cUoktEzDnnS0rpvH4+YowfLaXEGI9DvzFt13V77XNK6fw2BAAAAAAAgB/1AkzXJIzMkt26AAAAAElFTkSuQmCC");' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  opacity: 0.05;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  z-index: -1;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  pointer-events: none;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '}' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '/* Gradient pulse animation */' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '@keyframes gradientPulse {' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  0% {' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '    background-position: 0% 50%;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  }' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  50% {' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '    background-position: 100% 50%;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  }' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  100% {' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '    background-position: 0% 50%;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  }' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '}' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo 'body {' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  background: linear-gradient(-45deg, #0f0f0f, #1a1a1a, #0f0f0f, #151515);' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  background-size: 400% 400%;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '  animation: gradientPulse 15s ease infinite;' >> $(DIST_DIR)/$(CSS_DIR)/noise.css
	@echo '}' >> $(DIST_DIR)/$(CSS_DIR)/noise.css

# Create glitch text effects
glitch: setup
	@echo "Creating hero glitch text in cyan & magenta channels..."
	@echo '.glitch {' > $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  position: relative;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  font-weight: bold;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  text-transform: uppercase;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  letter-spacing: 0.05em;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  color: white;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '}' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '.glitch::before,' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '.glitch::after {' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  content: attr(data-text);' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  position: absolute;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  top: 0;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  left: 0;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  width: 100%;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  height: 100%;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  opacity: 0.8;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '}' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '.glitch::before {' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  /* Cyan color */' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  color: #0ff;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  z-index: -2;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  clip-path: polygon(0 0, 100% 0, 100% 45%, 0 45%);' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  transform: translate(-0.04em, -0.03em);' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  animation: glitch-effect 3s infinite;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '}' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '.glitch::after {' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  /* Magenta color */' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  color: #f0f;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  z-index: -1;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  clip-path: polygon(0 60%, 100% 60%, 100% 100%, 0 100%);' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  transform: translate(0.04em, 0.03em);' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  animation: glitch-effect 2s infinite reverse;' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '}' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '@keyframes glitch-effect {' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  0% {' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '    transform: translate(-0.04em, -0.03em);' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  }' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  20% {' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '    transform: translate(0.04em, -0.03em);' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  }' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  40% {' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '    transform: translate(-0.05em, 0.05em);' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  }' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  60% {' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '    transform: translate(0.03em, -0.04em);' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  }' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  80% {' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '    transform: translate(-0.03em, 0.04em);' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  }' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  100% {' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '    transform: translate(-0.04em, -0.03em);' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '  }' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css
	@echo '}' >> $(DIST_DIR)/$(CSS_DIR)/glitch.css

# Create scroll animations with GSAP - using a script approach instead of inline
scrolleffects: setup
	@echo "Creating GSAP ScrollTrigger fade-ins for every section..."
	@mkdir -p $(ASSETS_DIR)
	@echo '// GSAP scroll effects' > $(ASSETS_DIR)/scroll-effects.js.txt
	@echo 'document.addEventListener("DOMContentLoaded", () => {' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '  // Check if GSAP is loaded, otherwise load it' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '  if (typeof gsap === "undefined") {' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    const gsapScript = document.createElement("script");' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    gsapScript.src = "https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js";' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    document.head.appendChild(gsapScript);' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    ' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    const scrollTriggerScript = document.createElement("script");' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    scrollTriggerScript.src = "https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js";' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    document.head.appendChild(scrollTriggerScript);' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    ' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    // Wait for scripts to load' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    scrollTriggerScript.onload = initScrollEffects;' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '  } else {' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    initScrollEffects();' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '  }' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '  function initScrollEffects() {' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    gsap.registerPlugin(ScrollTrigger);' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    ' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    // Apply fade-in animation to sections' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    gsap.utils.toArray("section").forEach(section => {' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '      gsap.from(section, {' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '        opacity: 0,' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '        y: 50,' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '        duration: 1,' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '        scrollTrigger: {' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '          trigger: section,' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '          start: "top 80%",' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '          end: "bottom 20%",' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '          toggleActions: "play none none none"' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '        }' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '      });' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    });' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    ' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    // Animations for headings and paragraphs' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    gsap.utils.toArray("h2").forEach(heading => {' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '      gsap.from(heading, { opacity: 0, x: -50, duration: 0.8, scrollTrigger: { trigger: heading, start: "top 80%" } });' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    });' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    ' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    gsap.utils.toArray("p").forEach(paragraph => {' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '      gsap.from(paragraph, { opacity: 0, y: 30, duration: 0.8, delay: 0.2, scrollTrigger: { trigger: paragraph, start: "top 80%" } });' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    });' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    ' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    // Card animations' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    gsap.utils.toArray(".card").forEach((card, index) => {' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '      gsap.from(card, { opacity: 0, y: 50, duration: 0.7, delay: index * 0.1, scrollTrigger: { trigger: card, start: "top 80%" } });' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '    });' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '  }' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@echo '});' >> $(ASSETS_DIR)/scroll-effects.js.txt
	@cp $(ASSETS_DIR)/scroll-effects.js.txt $(DIST_DIR)/$(JS_DIR)/scroll-effects.js

# Update index.html with all the new features - simplified direct update approach
build: clean starfield noise glitch scrolleffects
	@echo "Updating index.html with all the cyber effects..."
	@cp -f index.html index.html.bak
	@echo "Adding CSS and JS references to index.html..."
	@if [ -f index.html ]; then \
		if grep -q "</head>" index.html; then \
			sed -i'.tmp' -e 's|</head>|  <link rel="stylesheet" href="css/noise.css">\n  <link rel="stylesheet" href="css/glitch.css">\n</head>|' index.html; \
			if grep -q "</body>" index.html; then \
				sed -i'.tmp' -e 's|</body>|  <script src="js/starfield.js"></script>\n  <script src="js/scroll-effects.js"></script>\n</body>|' index.html; \
				rm -f index.html.tmp; \
				echo "✅ index.html updated successfully!"; \
			else \
				echo "⚠️ Could not find </body> tag in index.html"; \
				echo "Please manually add these scripts before </body>:"; \
				echo "  <script src=\"js/starfield.js\"></script>"; \
				echo "  <script src=\"js/scroll-effects.js\"></script>"; \
			fi; \
		else \
			echo "⚠️ Could not find </head> tag in index.html"; \
			echo "Please manually add these links before </head>:"; \
			echo "  <link rel=\"stylesheet\" href=\"css/noise.css\">"; \
			echo "  <link rel=\"stylesheet\" href=\"css/glitch.css\">"; \
		fi; \
	else \
		echo "⚠️ index.html not found"; \
	fi

# Development mode
dev: build
	@echo "Starting development server..."
	@echo "To view your site, use a local server like: python -m http.server"
	@if command -v python3 > /dev/null; then \
		python3 -m http.server 8000; \
	elif command -v python > /dev/null; then \
		python -m http.server 8000; \
	else \
		echo "⚠️ Python not found. Please use another local server."; \
	fi

# Deploy target
deploy: build
	@echo "Deploying to GitHub Pages..."
	git add .
	git commit -m "🚀 Ultra glitch vibey update"
	git push origin main

# Special target for the glitch vibey effect (combination of all effects)
vibey: build
	@echo "✨ Site now has ultra glitch vibey effects! ✨"
	@echo "To view, run: make dev"
	@echo "To deploy, run: make deploy"

# Page target to handle the command "make page vibey"
page:
	@echo "Use: make page [EFFECT]"
	@echo "Available effects: vibey, glitch, starfield, noise, scrolleffects"
	@echo "Example: make page vibey"
	@if [ "$(filter-out $@,$(MAKECMDGOALS))" = "vibey" ]; then \
		$(MAKE) vibey; \
	fi

# Help command to show available targets
help:
	@echo "Available targets:"
	@echo "  make setup         - Set up project directories"
	@echo "  make clean         - Clean build artifacts"
	@echo "  make starfield     - Add starfield effect"
	@echo "  make noise         - Add noise overlay and gradient pulse"
	@echo "  make glitch        - Add glitch text effect"
	@echo "  make scrolleffects - Add scroll animations"
	@echo "  make build         - Build the complete site with all effects"
	@echo "  make dev           - Start development server"
	@echo "  make deploy        - Commit and push to GitHub"
	@echo "  make vibey         - Full ultra glitch vibey mode"
	@echo "  make page vibey    - Alternative way to add vibey effects"
	@echo "  make help          - Show this help message"

# Special rule to handle arguments to targets like "make page vibey"
%:
	@:

