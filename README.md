# 1PackageWebsite

Fully functional websites that fit in a single TCP packet.

## Why?

Because we can. The practical TCP payload limit is ~1400 bytes (after IP/TCP headers and Ethernet MTU overhead). These sites prove you can deliver a complete, styled, interactive web experience in one packet.

## Versions

| Version | Raw | Gzip | Description |
|---------|-----|------|-------------|
| [v1](v1/) | 666 | 466 | Minimal styled page |
| [v10](v10/) | 846 | 464 | Hyper-optimized jumbled layout |
| [v8](v8/) | 1042 | 589 | ASCII art landing |
| [v12](v12/) | 1047 | - | **2025 AI startup dark** |
| [v13](v13/) | 1104 | - | **2025 Glassmorphism dark** |
| [v7](v7/) | 1124 | 618 | Neumorphism soft UI |
| [v11](v11/) | 1161 | - | **2025 Bento grid dark** |
| [v6](v6/) | 1199 | 656 | Brutalist design |
| [v9](v9/) | 1211 | 621 | Tic Tac Toe game |
| [v5](v5/) | 1251 | 685 | Retro terminal/DOS |
| [v4](v4/) | 1359 | 765 | Neon cyberpunk animated |
| [v2](v2/) | 1371 | 756 | Personal portfolio |
| [v3](v3/) | 1372 | 757 | Web 2.0 + theme toggle |

## 2025/26 Dark Themes

New modern dark designs:
- **v11** - Bento grid layout (trending dashboard style)
- **v12** - AI/SaaS startup aesthetic with gradient text
- **v13** - Glassmorphism with blurred background orbs

## Size Check

```bash
./check-sizes.sh
```

## Optimization Techniques

See [v10/OPTIMIZATION.md](v10/OPTIMIZATION.md) for the complete guide.

**Key techniques:**
- Omit `<html>`, `<head>`, `<body>` tags
- Omit attribute quotes: `class=x`
- Omit closing tags: `<li>`, `<p>`
- `display:grid;place-items:center` (saves 20b)
- `height:100vh` not `min-height`
- Short hex colors: `#fff`, `#0ff`
- Single-char class names

## Live Preview

https://szolll.github.io/1PackageWebsite/
