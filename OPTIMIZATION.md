# Optimization Guide

Techniques learned across 30 single-packet websites.

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

## Mobile Responsive

```css
/* Minimal media query: ~35 bytes */
@media(max-width:600px){...}

/* Skip viewport meta if you can handle desktop only */
/* Saves: 55 bytes */
```

### Responsive Tricks
- `max-width:480px` on body (12 bytes) - auto responsive
- `vw` units for fluid sizing
- Grid auto-wraps with `repeat(auto-fit,minmax(...))`

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

## Checklist Before Ship

1. ☐ Remove all spaces after `:` in CSS
2. ☐ Remove final `;` in each rule
3. ☐ Use `#fff` not `#ffffff`
4. ☐ Use Grid not Flex for centering
5. ☐ Use font shorthand
6. ☐ Single char class names
7. ☐ Omit optional closing tags
8. ☐ Omit attribute quotes
9. ☐ Short content text
10. ☐ Run `wc -c` to verify < 1400

## Size Targets

| Quality | Bytes | What You Get |
|---------|-------|--------------|
| Extreme | <500 | Text only, minimal style |
| Tight | 500-800 | Clean design, limited features |
| Good | 800-1100 | Full design, some effects |
| Max | 1100-1400 | Rich design, animations |

## Quick Reference

```
Grid center:     display:grid;place-items:center
Dark mode:       background:#0a0a0a;color:#fff
Font stack:      font:14px system-ui
Full height:     height:100vh
Card shadow:     box-shadow:0 4px 20px #0008
Pill button:     padding:8px 20px;border-radius:20px
Gradient:        background:linear-gradient(#f00,#00f)
Transition:      transition:.2s
```
