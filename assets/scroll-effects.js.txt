// GSAP scroll effects
document.addEventListener("DOMContentLoaded", () => {
  // Check if GSAP is loaded, otherwise load it
  if (typeof gsap === "undefined") {
    const gsapScript = document.createElement("script");
    gsapScript.src = "https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js";
    document.head.appendChild(gsapScript);
    
    const scrollTriggerScript = document.createElement("script");
    scrollTriggerScript.src = "https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js";
    document.head.appendChild(scrollTriggerScript);
    
    // Wait for scripts to load
    scrollTriggerScript.onload = initScrollEffects;
  } else {
    initScrollEffects();
  }

  function initScrollEffects() {
    gsap.registerPlugin(ScrollTrigger);
    
    // Apply fade-in animation to sections
    gsap.utils.toArray("section").forEach(section => {
      gsap.from(section, {
        opacity: 0,
        y: 50,
        duration: 1,
        scrollTrigger: {
          trigger: section,
          start: "top 80%",
          end: "bottom 20%",
          toggleActions: "play none none none"
        }
      });
    });
    
    // Animations for headings and paragraphs
    gsap.utils.toArray("h2").forEach(heading => {
      gsap.from(heading, { opacity: 0, x: -50, duration: 0.8, scrollTrigger: { trigger: heading, start: "top 80%" } });
    });
    
    gsap.utils.toArray("p").forEach(paragraph => {
      gsap.from(paragraph, { opacity: 0, y: 30, duration: 0.8, delay: 0.2, scrollTrigger: { trigger: paragraph, start: "top 80%" } });
    });
    
    // Card animations
    gsap.utils.toArray(".card").forEach((card, index) => {
      gsap.from(card, { opacity: 0, y: 50, duration: 0.7, delay: index * 0.1, scrollTrigger: { trigger: card, start: "top 80%" } });
    });
  }
});
