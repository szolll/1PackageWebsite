# 1PackageWebsite

Fully functional websites that fit in a single TCP packet.

## Why?

Because we can. The practical TCP payload limit is ~1400 bytes (after IP/TCP headers and Ethernet MTU overhead). These sites prove you can deliver a complete, styled, interactive web experience in one packet.

## Versions

| Version | Raw | Gzip | Description |
|---------|-----|------|-------------|
| [v1](v1/) | 666 | 466 | Minimal styled page |
| [v10](v10/) | 846 | 464 | Hyper-optimized with jumbled layout |
| [v8](v8/) | 1042 | 589 | ASCII art landing |
| [v7](v7/) | 1124 | 618 | Neumorphism soft UI |
| [v6](v6/) | 1199 | 656 | Brutalist design |
| [v9](v9/) | 1211 | 621 | Tic Tac Toe game |
| [v5](v5/) | 1251 | 685 | Retro terminal/DOS |
| [v4](v4/) | 1359 | 765 | Neon cyberpunk animated |
| [v2](v2/) | 1371 | 756 | Personal portfolio |
| [v3](v3/) | 1372 | 757 | Web 2.0 + theme toggle |

## Size Check

Run the included script to verify all versions:

```bash
./check-sizes.sh
```

## Size Constraints

- **Target:** < 1400 bytes (covers most network configurations)
- **Smallest achieved:** 666 bytes (v1)
- **Ethernet MTU:** 1500 bytes - 20 (IP) - 20-60 (TCP) = ~1400-1460 bytes usable

## Optimization Techniques

See [v10/OPTIMIZATION.md](v10/OPTIMIZATION.md) for the complete guide.

**Key techniques:**
- Omit `<html>`, `<head>`, `<body>` tags
- Omit attribute quotes: `class=x` not `class="x"`
- Omit closing tags: `<li>` not `<li></li>`
- Use `display:grid;place-items:center` (saves 20b vs flex)
- Use `height:100vh` not `min-height`
- Use `<b>`/`<i>` instead of `<span class=x>`
- No spaces in CSS: `color:#fff`
- Short hex colors: `#fff`, `#0ff`
- Single-char class names: `.c`, `.l`

## Comparison

| Site | Size |
|------|------|
| Average webpage | ~2.5 MB |
| This project (largest) | 1.4 KB |
| This project (smallest) | 666 B |
| **Difference** | **~3,750x smaller** |

## Live Preview

https://szolll.github.io/1PackageWebsite/
