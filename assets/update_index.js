const fs = require("fs");
try {
  let html = fs.readFileSync("index.html", "utf8");
  const cssLinks = "
  <link rel=\"stylesheet\" href=\"css/noise.css\">
  <link rel=\"stylesheet\" href=\"css/glitch.css\">
";
  const jsScripts = "
  <script src=\"js/starfield.js\"></script>
  <script src=\"js/scroll-effects.js\"></script>
";
  html = html.replace("</head>", cssLinks + "</head>");
  html = html.replace("</body>", jsScripts + "</body>");
  fs.writeFileSync("index.html", html);
  console.log("index.html updated successfully");
} catch (error) {
  console.error("Error updating index.html:", error);
}
