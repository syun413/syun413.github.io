# Kuan-Hsun Tu

Personal academic website. Open `index.html` directly or serve this directory with any static HTTP server. GitHub Pages can publish it from the repository root; no build step is required.

- `index.html`: biography, publications, awards, experience, and links.
- `assets/style.css`: responsive layout and colors. Change `--link` and `--link-hover` to adjust the indigo-blue accent.
- `assets/images/profile.png`: profile photograph.
- `assets/documents/khtu_CV.pdf`: existing CV.
- `legacy/`: the complete previous website, preserved with its original relative paths. Open `legacy/index.html` to view it.

The layout follows [Seohong Park’s website](https://seohong.me/). This implementation is a static, semantic HTML page with its own CSS. Typography uses Arial, with Helvetica and generic sans-serif fallbacks; no external font requests are needed.

Publications use the full content width, listing the title, authors, venue/status with year, and resources. Honors and experience share a date column and a content column; on narrow screens, the date appears above the content. Their first line names the event, course, or organization. Awards list placement before a formal award name or role on the same line. Work and teaching entries place the role below the organization or course name.
