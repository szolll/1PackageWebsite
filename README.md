# 1PackageWebsite

Fully functional websites that fit in a single TCP packet.

[![Optimization Audit](https://github.com/szolll/1PackageWebsite/actions/workflows/audit.yml/badge.svg)](https://github.com/szolll/1PackageWebsite/actions/workflows/audit.yml)

## Versions (30 total)

### Dark 2025 Themes
| Version | Bytes | Description |
|---------|-------|-------------|
| [v30](v30/) | 690 | Type - bold cursor |
| [v26](v26/) | 741 | Split - 50/50 layout |
| [v29](v29/) | 856 | Grid - interactive tiles |
| [v27](v27/) | 878 | Glow - ambient orbs |
| [v28](v28/) | 912 | Line - editorial dividers |
| [v25](v25/) | 963 | Mono - terminal log style |
| [v20](v20/) | 987 | Link in Bio - social links |
| [v17](v17/) | 1082 | Noir Studio - ultra minimal |
| [v21](v21/) | 1084 | macOS Terminal - fake window |
| [v12](v12/) | 1090 | AI Startup - gradient text |
| [v18](v18/) | 1116 | Dots Studio - colored dots |
| [v24](v24/) | 1143 | Wave - warm gradient |
| [v23](v23/) | 1150 | Stack Card - skill badges |
| [v13](v13/) | 1153 | Glassmorphism - blur effects |
| [v22](v22/) | 1164 | Grain Studio - editorial |
| [v11](v11/) | 1210 | Bento Grid - dashboard style |
| [v15](v15/) | 1235 | Mesh Gradient - multi-color |
| [v14](v14/) | 1255 | Dev Portfolio - card style |
| [v19](v19/) | 1306 | Profile Card - gradient header |
| [v16](v16/) | 1341 | Cyberpunk - angular/neon |

### Dark Classic
| Version | Bytes | Description |
|---------|-------|-------------|
| [v10](v10/) | 895 | Hyper-optimized jumbled |
| [v8](v8/) | 993 | ASCII Art |
| [v9](v9/) | 1155 | Tic Tac Toe game |
| [v5](v5/) | 1202 | Retro Terminal |
| [v4](v4/) | 1304 | Neon Cyberpunk |
| [v3](v3/) | 1323 | Web 2.0 + theme |

### Light Themes
| Version | Bytes | Description |
|---------|-------|-------------|
| [v1](v1/) | 682 | Minimal styled |
| [v7](v7/) | 1075 | Neumorphism |
| [v6](v6/) | 1150 | Brutalist |
| [v2](v2/) | 1306 | Personal Portfolio |

## Size Check

```bash
./check-sizes.sh
```

## CI/CD

GitHub Actions automatically audits all versions on every commit:
- Size must be under 1400 bytes
- Must have viewport meta tag
- No unnecessary HTML tags (`<html>`, `<head>`, etc.)
- No `transparent` keyword (use `#0000`)

## Optimization Guide

See [OPTIMIZATION.md](OPTIMIZATION.md) - comprehensive 589-line guide covering HTML, CSS, and JavaScript optimization.

**Key techniques:**
- Omit optional tags (`<html>`, `<head>`, `<body>`)
- Omit quotes: `class=x`
- `display:grid;place-items:center` (saves 20b vs flex)
- Short hex: `#fff`, `#0000`
- `height:100vh` not `min-height`
- Protocol-relative URLs: `//example.com`

## Usage

```bash
./serve.sh        # Start local server on port 8000
./serve.sh 3000   # Or custom port
```

Then open http://localhost:8000 in your browser.
