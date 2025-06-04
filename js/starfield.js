class Starfield {
  constructor(canvas, options = {}) {
    this.canvas = canvas;
    this.ctx = canvas.getContext("2d");
    this.stars = [];
    this.density = options.density || 100;
    this.speed = options.speed || 0.05;
    this.maxSize = options.maxSize || 2;
    this.color = options.color || "#ffffff";
    this.width = canvas.width;
    this.height = canvas.height;
    this.init();
  }

  init() {
    // Create stars
    for (let i = 0; i < this.density; i++) {
      this.stars.push({
        x: Math.random() * this.width,
        y: Math.random() * this.height,
        size: Math.random() * this.maxSize,
        speed: Math.random() * this.speed + 0.1
      });
    }
    this.animate();
  }

  draw() {
    this.ctx.clearRect(0, 0, this.width, this.height);
    this.ctx.fillStyle = this.color;
    
    for (let star of this.stars) {
      this.ctx.beginPath();
      this.ctx.arc(star.x, star.y, star.size, 0, Math.PI * 2);
      this.ctx.fill();
      
      // Move star
      star.y += star.speed;
      
      // Reset star if it goes off screen
      if (star.y > this.height) {
        star.y = 0;
        star.x = Math.random() * this.width;
      }
    }
  }

  animate() {
    this.draw();
    requestAnimationFrame(() => this.animate());
  }
}

// Initialize on load
document.addEventListener("DOMContentLoaded", () => {
  const canvas = document.createElement("canvas");
  canvas.width = window.innerWidth;
  canvas.height = window.innerHeight;
  canvas.style.position = "fixed";
  canvas.style.top = "0";
  canvas.style.left = "0";
  canvas.style.zIndex = "-1";
  document.body.prepend(canvas);
  
  new Starfield(canvas, {
    density: 150,
    speed: 0.08,
    maxSize: 2,
    color: "#ffffff"
  });
});
