# v10 Optimization Strategy

## HTML Byte Savings

| Technique | Saves | Notes |
|-----------|-------|-------|
| Omit `<html>`, `</html>` | 13 | Browser auto-creates |
| Omit `<head>`, `</head>` | 13 | Browser auto-creates |
| Omit `<body>`, `</body>` | 13 | Browser auto-creates |
| Omit `</p>`, `</li>` | 4 each | Optional closing tags |
| Omit attribute quotes | 2 each | When no spaces: `charset=UTF-8` |
| Short title | ~10 | `<title>X</title>` = 16 bytes |
| Omit viewport meta | 55 | Trade-off: mobile scaling |

## CSS Byte Savings

| Technique | Example | Saves |
|-----------|---------|-------|
| Grid centering | `display:grid;place-items:center` vs `display:flex;align-items:center;justify-content:center` | **20** |
| No space after `:` | `color:#fff` | 1 each |
| No final `;` | `{margin:0}` | 1 each rule |
| Short colors | `#000` vs `black` | 1 |
| Named short colors | `red`, `tan` | 1 vs `#f00` |
| Zero without unit | `0` vs `0px` | 2 |
| Decimal shorthand | `.5` vs `0.5` | 1 |
| Single char classes | `.c` vs `.card` | 3 |
| Element selectors | `h1` vs `.title` | 4 |
| Combine selectors | `h1,p{m:0}` | many |
| `height` vs `min-height` | `height:100vh` | 4 |
| `all:unset` | Resets in 10 bytes | varies |

## HTML Tag Savings

| Long | Short | Saves |
|------|-------|-------|
| `<span class=x>` | `<b>` or `<i>` | ~10 each |
| `<div class=x>` | `<p>` or `<section>` | varies |

## Content Byte Savings

| Long | Short | Saves |
|------|-------|-------|
| Hello | Hi | 3 |
| Welcome | Hey | 4 |
| Contact | Say hi | 1 |
| Portfolio | Work | 5 |
| About me | Bio | 5 |
| Visit | Go | 3 |
| Click here | → | 9 |

## Highest Impact Per Byte

1. `background:#000;color:#fff` (27 bytes) → instant dark mode
2. `text-align:center` (17 bytes) → clean layout
3. Flexbox centering (~45 bytes) → professional centering
4. `border-radius` (20 bytes) → modern feel
5. One gradient (~50 bytes) → visual interest
