# 1PackageWebsite

Fully functional websites that fit in a single TCP packet.

## Versions (22 total)

### Dark 2025 Themes
| Version | Bytes | Description |
|---------|-------|-------------|
| [v17](v17/) | 1033 | Noir Studio - ultra minimal |
| [v12](v12/) | 1047 | AI Startup - gradient text |
| [v18](v18/) | 1073 | Dots Studio - colored dots |
| [v13](v13/) | 1104 | Glassmorphism - blur effects |
| [v11](v11/) | 1161 | Bento Grid - dashboard style |
| [v15](v15/) | 1204 | Mesh Gradient - multi-color |
| [v14](v14/) | 1206 | Dev Portfolio - card style |
| [v19](v19/) | 1257 | Profile Card - gradient header |
| [v16](v16/) | 1314 | Cyberpunk - angular/neon |
| [v20](v20/) | 938 | Link in Bio - social links |
| [v21](v21/) | 1035 | macOS Terminal - fake window |
| [v22](v22/) | 1121 | Grain Studio - editorial |

### Dark Classic
| Version | Bytes | Description |
|---------|-------|-------------|
| [v10](v10/) | 846 | Hyper-optimized jumbled |
| [v8](v8/) | 1042 | ASCII Art |
| [v9](v9/) | 1211 | Tic Tac Toe game |
| [v5](v5/) | 1251 | Retro Terminal |
| [v4](v4/) | 1359 | Neon Cyberpunk |
| [v3](v3/) | 1372 | Web 2.0 + theme |

### Light Themes
| Version | Bytes | Description |
|---------|-------|-------------|
| [v1](v1/) | 666 | Minimal styled |
| [v7](v7/) | 1124 | Neumorphism |
| [v6](v6/) | 1199 | Brutalist |
| [v2](v2/) | 1371 | Personal Portfolio |

## Size Check

```bash
./check-sizes.sh
```

## Optimization Guide

See [v10/OPTIMIZATION.md](v10/OPTIMIZATION.md)

**Key techniques:**
- Omit optional tags (`<html>`, `<head>`, `<body>`)
- Omit quotes: `class=x`
- `display:grid;place-items:center`
- Short hex: `#fff`, `#0ff`
- Single-char classes

## Usage

```bash
./serve.sh        # Start local server on port 8000
./serve.sh 3000   # Or custom port
```

Then open http://localhost:8000 in your browser.
