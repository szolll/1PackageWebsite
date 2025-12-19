# Optimization Guide

Techniques learned across 30 single-packet websites.

## Deep Dive Results (737 bytes saved)

Actual savings from auditing all 30 versions:

| Optimization | Files | Total Saved |
|-------------|-------|-------------|
| Remove `<html>`, `</html>`, `<head>`, `</head>` | 9 | ~400b |
| Short viewport (omit `initial-scale=1`) | 16 | ~256b |
| `transparent` → `#0000` | 7 | ~49b |
| `min-height:100vh` → `height:100vh` | 8 | ~32b |

### Key Learnings

1. **Viewport meta**: `initial-scale=1` is default - omit it (saves 16b)
2. **HTML structure tags**: Browser creates `<html>`, `<head>`, `<body>` - omit all (saves 39b+)
3. **Color keywords**: `transparent` = 11 chars, `#0000` = 5 chars (saves 6b each)
4. **Height shortcut**: `height:100vh` works for centered layouts (saves 4b vs min-height)

## HTML Structure

| Technique | Saves | Notes |
|-----------|-------|-------|
| Omit `<html>`, `<head>`, `<body>` | 39 | Browser auto-creates |
| Omit `</p>`, `</li>`, `</td>` | 4 each | Optional closing tags |
| Omit attribute quotes | 2 each | `class=x` not `class="x"` |
| Short title | ~10 | `<title>•</title>` = 17 bytes |
| Single char in title | 1 | Use `•` or `X` |
| Combine meta tags | varies | Only keep essential ones |
| Use `<b>` `<i>` `<s>` `<u>` | ~10 each | Instead of `<span class=x>` |
| Use `<p>` for containers | 2-5 | Shorter than `<div class=x>` |

## CSS Fundamentals

| Technique | Example | Saves |
|-----------|---------|-------|
| No space after `:` | `color:#fff` | 1 each |
| No final `;` in rule | `{margin:0}` | 1 per rule |
| Single char classes | `.c` vs `.card` | 3+ |
| Element selectors | `h1` vs `.title` | 4+ |
| Combine selectors | `h1,p{margin:0}` | many |
| `*` reset | `*{margin:0}` | vs listing elements |

## Layout (Critical)

| Technique | Bytes | Best For |
|-----------|-------|----------|
| `display:grid;place-items:center` | 32 | Centering (saves 20 vs flex) |
| `height:100vh` vs `min-height` | saves 4 | Full height layouts |
| `text-align:center` | 17 | Text centering |
| `margin:0 auto` | 12 | Horizontal centering |
| `position:fixed` | 14 | Overlays, backgrounds |
| `position:absolute` | 17 | Element positioning |

### Grid vs Flex Comparison
```css
/* GRID: 32 bytes */
display:grid;place-items:center

/* FLEX: 52 bytes */
display:flex;align-items:center;justify-content:center
```
**Always use Grid for centering.**

## Colors

| Long | Short | Saves |
|------|-------|-------|
| `#ffffff` | `#fff` | 3 |
| `#000000` | `#000` | 3 |
| `black` | `#000` | 1 |
| `white` | `#fff` | 1 |
| `#ff0000` | `red` | 4 |
| `#00ffff` | `#0ff` | 3 |
| `rgba(0,0,0,.5)` | `#0008` | 6 |
| `transparent` | `#0000` | 7 |

### Short Named Colors (3-4 chars)
`red` `tan` `gold` `blue` `cyan` `gray` `lime` `navy` `peru` `pink` `plum` `snow` `teal`

## Numbers & Units

| Technique | Example | Saves |
|-----------|---------|-------|
| Zero without unit | `0` vs `0px` | 2 |
| Decimal shorthand | `.5` vs `0.5` | 1 |
| Percentage vs calc | `50%` vs `calc(50%)` | 7 |
| vh/vw for responsive | `100vh` | vs js calculations |

## Fonts

```css
/* LONG: 56 bytes */
font-family:system-ui;font-size:14px;line-height:1.5

/* SHORT: 26 bytes */
font:14px/1.5 system-ui
```
**Saves 30 bytes.** Always use font shorthand.

### Smallest Font Stacks
- `system-ui` - 9 bytes, works everywhere
- `monospace` - 9 bytes, for code
- `serif` - 5 bytes, classic look
- `cursive` - 7 bytes, decorative

## Backgrounds & Gradients

```css
/* Solid dark: 14 bytes */
background:#000

/* Linear gradient: ~45 bytes */
background:linear-gradient(#f00,#00f)

/* Direction: add ~4-6 bytes */
background:linear-gradient(90deg,#f00,#00f)

/* Radial: similar size */
background:radial-gradient(#f00,#00f)
```

### Gradient Shortcuts
- Omit `to bottom` (default)
- Use 3-char hex colors
- `135deg` is common diagonal

## Animations

```css
/* Minimal animation: ~50 bytes */
@keyframes x{to{opacity:0}}
.c{animation:x 1s infinite}

/* Transition: ~25 bytes */
transition:.2s
```

### Animation Tips
- Single letter keyframe name
- `to{}` instead of `100%{}`
- `infinite` loops cost 8 bytes
- `alternate` costs 9 bytes

## Effects

| Effect | Bytes | Example |
|--------|-------|---------|
| Box shadow | ~30 | `box-shadow:0 4px 20px #0008` |
| Text shadow | ~25 | `text-shadow:0 0 10px #f00` |
| Blur filter | ~18 | `filter:blur(10px)` |
| Border radius | ~20 | `border-radius:8px` |
| Opacity | ~10 | `opacity:.8` |

### Glassmorphism (Minimal)
```css
/* ~60 bytes */
background:#fff2;backdrop-filter:blur(10px);border:1px solid #fff3
```

## Content Substitutions

| Long | Short | Saves |
|------|-------|-------|
| Hello | Hi | 3 |
| Welcome | Hey | 4 |
| Contact | Say hi | 1 |
| Portfolio | Work | 5 |
| About me | Bio | 5 |
| Projects | Work | 3 |
| Click here | → | 9 |
| View more | More | 5 |
| Learn more | More | 6 |

### Useful Unicode (1-3 bytes)
`→` `←` `↑` `↓` `•` `·` `✦` `★` `×` `÷` `©` `®` `°` `±`

## Design Patterns (Bytes)

| Pattern | Approx Bytes | Impact |
|---------|-------------|--------|
| Dark mode base | 27 | `background:#000;color:#fff` |
| Full page center | 50 | Grid + 100vh |
| Card with shadow | 80 | Border-radius + shadow |
| Gradient text | 90 | `-webkit-background-clip` |
| Hover effect | 30 | `:hover{color:#fff}` |
| Blinking cursor | 45 | Keyframe animation |
| Pill button | 60 | Padding + radius |

## Mobile Friendly (Critical)

Without viewport meta, mobile browsers zoom out to show desktop view. **Always include it.**

### Viewport Meta Options

| Version | Bytes | Notes |
|---------|-------|-------|
| `<meta name=viewport content="width=device-width,initial-scale=1">` | 65 | Standard, safest |
| `<meta name=viewport content="width=device-width">` | 49 | Short, works in modern browsers |

**Use the 49-byte version** - `initial-scale=1` is default when `width=device-width` is set.

### Mobile-First CSS (No Media Queries)

These patterns are responsive by default - no extra bytes:

```css
/* Fluid width - auto-responsive */
max-width:480px;margin:0 auto    /* 27 bytes */

/* Percentage widths */
width:90%                         /* 9 bytes */

/* Viewport units */
width:80vw                        /* 10 bytes */
font-size:4vw                     /* 13 bytes - scales with screen */

/* Grid auto-wrap */
grid-template-columns:repeat(auto-fit,minmax(150px,1fr))  /* 55 bytes */
```

### When You Need Media Queries

Only add if layout truly breaks on mobile:

```css
/* Minimal: 25 bytes + content */
@media(max-width:600px){...}

/* Common breakpoints */
600px  /* tablets */
480px  /* phones */
320px  /* small phones */
```

### Mobile-Safe Patterns

| Pattern | Safe? | Notes |
|---------|-------|-------|
| `display:grid;place-items:center` | ✓ | Works everywhere |
| `height:100vh` | ✓ | Full viewport |
| Fixed pixel widths | ✗ | Use max-width or % |
| `position:fixed` | ⚠ | Can cause issues on iOS |
| Hover effects | ⚠ | Add tap alternative |
| Small tap targets | ✗ | Min 44px for buttons |

### Recommended Mobile Base

```css
/* 49 bytes - add to all sites */
<meta name=viewport content="width=device-width">

/* Body setup for mobile: ~40 bytes */
body{max-width:480px;margin:0 auto;padding:20px}
```

### Testing Mobile

```bash
# Chrome DevTools: Cmd+Shift+M (Mac) / Ctrl+Shift+M (Win)
# Or resize browser to 375px width (iPhone)
```

## JavaScript Optimization

### Inline Event Handlers (Smallest)
```html
<!-- 45 bytes -->
<button onclick="document.body.classList.toggle('dark')">Theme</button>

<!-- vs addEventListener: 80+ bytes -->
<script>document.querySelector('button').addEventListener('click',()=>{})</script>
```

### Short JS Patterns
| Long | Short | Saves |
|------|-------|-------|
| `document.getElementById('x')` | `document.querySelector('#x')` | 0 |
| `document.querySelector` | `$` (if jQuery) | 16 |
| `function(){}` | `()=>{}` | 6 |
| `element.className='x'` | `element.classList.toggle('x')` | -8 |
| `setAttribute('data-x','1')` | `dataset.x=1` | 12 |
| `true` | `!0` | 2 |
| `false` | `!1` | 3 |

### Minimal Toggle Theme
```html
<!-- 73 bytes total -->
<button onclick="document.documentElement.toggleAttribute('data-t')">☀</button>
```

### Minimal Game Loop
```js
// Shortest interval: 26 bytes
setInterval(update,16)

// Shortest RAF: 34 bytes
requestAnimationFrame(update)
```

### Event Delegation
```js
// Instead of multiple listeners, use one on parent
document.onclick=e=>{if(e.target.matches('a'))handle()}
```

## CSS Shorthands

### Border Shorthand
```css
/* LONG: 42 bytes */
border-width:1px;border-style:solid;border-color:#fff

/* SHORT: 22 bytes */
border:1px solid #fff
```

### Background Shorthand
```css
/* LONG: 65 bytes */
background-color:#000;background-image:url(x);background-repeat:no-repeat

/* SHORT: 35 bytes */
background:#000 url(x) no-repeat
```

### Inset (Modern Positioning)
```css
/* LONG: 44 bytes */
top:0;right:0;bottom:0;left:0

/* SHORT: 8 bytes */
inset:0
```

### Margin/Padding Patterns
```css
margin:10px           /* all sides */
margin:10px 20px      /* vertical | horizontal */
margin:10px 20px 30px /* top | horizontal | bottom */
margin:1px 2px 3px 4px /* top right bottom left */
```

### Place Shorthand
```css
/* LONG: 47 bytes */
align-items:center;justify-content:center

/* SHORT: 20 bytes */
place-items:center   /* only works with grid */
```

## Advanced CSS Tricks

### all:unset (Nuclear Reset)
```css
/* Reset all properties: 10 bytes */
button{all:unset}
```

### currentColor Keyword
```css
/* Inherits from color property */
border:1px solid currentColor  /* 28 bytes */
/* vs repeating the color */
color:#f00;border:1px solid #f00  /* 32 bytes */
```

### inherit Keyword
```css
/* Inherit from parent: 7 bytes each */
font:inherit
color:inherit
```

### Negative Margins (Overlap)
```css
/* Pull element up without position:absolute */
margin-top:-20px  /* 16 bytes vs position:absolute ~40 bytes */
```

### :is() and :where() Selectors
```css
/* LONG: 24 bytes */
h1:hover,h2:hover,h3:hover{}

/* SHORT: 21 bytes */
:is(h1,h2,h3):hover{}
```

### Gap vs Margin (Flexbox/Grid)
```css
/* Instead of margin on children */
.parent{gap:10px}  /* 10 bytes, cleaner */
```

## HTML Attributes

### Boolean Attributes
```html
<!-- These are equivalent -->
<input disabled>           <!-- 8 bytes -->
<input disabled=disabled>  <!-- 18 bytes - waste! -->
<input disabled="">        <!-- 11 bytes - waste! -->
```

### Shortest Links
```html
<a href=#>Link</a>      <!-- # = same page, 1 byte -->
<a href=/>Home</a>      <!-- / = root, 1 byte -->
<a href=//x.co>X</a>    <!-- protocol-relative -->
```

### Omit http/https
```html
<!-- Works for external links -->
<a href=//example.com>Link</a>  <!-- saves 5-6 bytes -->
```

### Input Shortcuts
```html
<input type=text>     <!-- default, can omit type entirely -->
<input>               <!-- same as above, saves 11 bytes -->
<input type=email>    <!-- provides mobile keyboard -->
```

## Advanced Saves

### Combine Similar Properties
```css
/* Instead of: */
margin-top:10px;margin-bottom:10px
/* Use: */
margin:10px 0
```

### CSS Custom Properties (When Worth It)
Only use if repeated 3+ times:
```css
:root{--c:#f0f}  /* 16 bytes setup */
color:var(--c)  /* 14 bytes each use */
```

### Pseudo Elements
```css
/* Add decorative content without HTML */
h1::after{content:"→"}  /* 20 bytes */
```

### Attribute Selectors (No Classes)
```css
/* Style by attribute instead of class */
[href]{color:red}        /* all links */
[type=email]{border:red} /* email inputs */
```

## SVG Optimization

### Inline SVG (When Tiny)
```html
<!-- Minimal icon: ~50 bytes -->
<svg viewBox="0 0 24 24" width=24><path d="M12 2L2 22h20z"/></svg>
```

### SVG Shortcuts
| Technique | Saves |
|-----------|-------|
| Remove `xmlns` attribute | 36 |
| Remove `xml:space` | 20 |
| Use `viewBox` not `width/height` | varies |
| Round path numbers | 1-3 per number |
| Remove unnecessary precision | `1.000` → `1` |
| Use `z` to close paths | vs repeating first point |

### Consider CSS Instead
```css
/* Triangle: ~40 bytes vs SVG ~60 bytes */
.arrow{border:10px solid #0000;border-top-color:#fff}

/* Circle: ~35 bytes vs SVG ~70 bytes */
.dot{width:10px;height:10px;border-radius:50%;background:#fff}
```

## Tools & Validation

### Size Check Commands
```bash
# Check raw size
wc -c file.html

# Check gzip size (what actually transfers)
gzip -c file.html | wc -c

# Check all versions
for f in v*/index.html; do echo "$(wc -c < "$f") $f"; done | sort -n
```

### Online Minifiers
- [HTML Minifier](https://kangax.github.io/html-minifier/)
- [CSS Nano](https://cssnano.co/playground/)
- [Terser](https://try.terser.org/) (JS)

### Browser DevTools
```
Network tab → Size column → Shows actual transfer size
Lighthouse → Performance → Shows render metrics
```

### Validation
```bash
# HTML5 validation (if you care)
curl -s https://validator.w3.org/nu/?out=json --data-binary @file.html

# Or just: if it renders, it works ™
```

## Checklist Before Ship

### HTML
1. ☐ Has viewport meta tag (mobile-friendly)
2. ☐ Omit `<html>`, `<head>`, `<body>` tags
3. ☐ Omit optional closing tags (`</p>`, `</li>`)
4. ☐ Omit attribute quotes where possible
5. ☐ Use short tag names (`<b>` vs `<span>`)

### CSS
6. ☐ Remove all spaces after `:` in CSS
7. ☐ Remove final `;` in each rule
8. ☐ Use `#fff` not `#ffffff`
9. ☐ Use `#0000` not `transparent`
10. ☐ Use Grid not Flex for centering
11. ☐ Use font shorthand
12. ☐ Use `height:100vh` not `min-height`
13. ☐ Single char class names
14. ☐ Use `inset:0` not `top:0;right:0;bottom:0;left:0`

### JavaScript
15. ☐ Use arrow functions `()=>{}`
16. ☐ Use inline `onclick` for simple handlers
17. ☐ Use `!0`/`!1` for true/false
18. ☐ Use template literals only if shorter

### Content
19. ☐ Short content text (Hi vs Hello)
20. ☐ Use Unicode symbols (→ vs "arrow")
21. ☐ No fixed pixel widths (use max-width or %)
22. ☐ Run `wc -c` to verify < 1400

## Size Targets

| Quality | Bytes | What You Get |
|---------|-------|--------------|
| Extreme | <500 | Text only, minimal style |
| Tight | 500-800 | Clean design, limited features |
| Good | 800-1100 | Full design, some effects |
| Max | 1100-1400 | Rich design, animations |

## Quick Reference

```
=== HTML ===
Mobile viewport: <meta name=viewport content="width=device-width">
Omit tags:       <html>, <head>, <body>, </p>, </li>
Short link:      <a href=#>

=== CSS Layout ===
Grid center:     display:grid;place-items:center
Full height:     height:100vh
Responsive:      max-width:480px;margin:0 auto
Full cover:      inset:0 (replaces top/right/bottom/left:0)

=== CSS Style ===
Dark mode:       background:#0a0a0a;color:#fff
Font stack:      font:14px system-ui
Card shadow:     box-shadow:0 4px 20px #0008
Pill button:     padding:8px 20px;border-radius:20px
Gradient:        background:linear-gradient(#f00,#00f)
Transition:      transition:.2s
Transparent:     #0000 (not 'transparent')
Alpha black:     #0008 (not rgba(0,0,0,.5))

=== JavaScript ===
Theme toggle:    onclick="document.documentElement.toggleAttribute('data-t')"
Arrow func:      ()=>{}
True/false:      !0 / !1
```
