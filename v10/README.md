# v10 - Hyper-Optimized

**Size:** 703 bytes (449 gzipped)

Multi-page site with navigation - every byte intentionally chosen.

## Pages
- `index.html` (703b) - Home with 3 dots (one pink)
- `about.html` (762b) - About section
- `contact.html` (709b) - Contact info
- `links.html` (804b) - Social links
- `projects.html` (800b) - Project list
- `login.html` (909b) - Login form

## Optimization Techniques Applied

### HTML Savings
- Omitted `<html>`, `<head>`, `<body>` tags (browser auto-creates)
- Omitted attribute quotes (`charset=UTF-8`)
- Single-char title (`•`)
- Omitted optional closing `</p>` tags

### CSS Savings
- `*{margin:0}` instead of reset per element
- `height:100vh` instead of `min-height`
- `1em` instead of `16px`
- No spaces after colons
- No final semicolons
- Shortest hex colors (`#111`, `#fff`, `#f0f`, `#0ff`)

### Content Savings
- "1pkt" instead of "1 Packet" (saves 4 bytes)
- "348b" instead of "348 bytes" (saves 5 bytes)
- Arrow `→` as link text (1 char)
- No wrapper `<div>` needed

## Features (in 348 bytes)
- Gradient text effect (magenta → cyan)
- Flexbox centering
- Dark theme
- System font
- Clickable link

## Trade-offs
- No `-webkit-background-clip` (gradient text may not work in Safari)
- Minimal content
- No hover effects

See [OPTIMIZATION.md](OPTIMIZATION.md) for the full strategy guide.
