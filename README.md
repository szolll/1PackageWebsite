# 1PackageWebsite

Fully functional websites that fit in a single TCP packet.

## Why?

Because we can. The practical TCP payload limit is ~1400 bytes (after IP/TCP headers and Ethernet MTU overhead). These sites prove you can deliver a complete, styled, interactive web experience in one packet.

## Versions

| Version | Raw | Gzip | Description |
|---------|-----|------|-------------|
| [v10](v10/) | **348** | **294** | Hyper-optimized minimal |
| [v1](v1/) | 698 | 486 | Minimal styled page |
| [v8](v8/) | 1054 | 596 | ASCII art landing |
| [v7](v7/) | 1167 | 635 | Neumorphism soft UI |
| [v9](v9/) | 1223 | 629 | Tic Tac Toe game |
| [v6](v6/) | 1232 | 667 | Brutalist design |
| [v5](v5/) | 1281 | 694 | Retro terminal/DOS |
| [v3](v3/) | 1390 | 760 | Web 2.0 + theme toggle |
| [v4](v4/) | 1400 | 780 | Neon cyberpunk animated |
| [v2](v2/) | 1400 | 771 | Personal portfolio |

## Size Check

Run the included script to verify all versions:

```bash
./check-sizes.sh
```

Output:
```
VERSION       RAW     GZIP STATUS
v10           348      294 OK
v1            698      486 OK
...
All versions within size limit!
```

## Size Constraints

- **Target:** < 1400 bytes (covers most network configurations)
- **Smallest achieved:** 348 bytes (v10)
- **Theoretical max:** 64KB (rarely achievable in practice)
- **Ethernet MTU:** 1500 bytes - 20 (IP) - 20-60 (TCP) = ~1400-1460 bytes usable

## Techniques Used

- Omit optional HTML tags (`<html>`, `<head>`, `<body>`)
- Omit attribute quotes where valid
- Omit closing tags (`</p>`, `</li>`)
- Minified single-line HTML
- Short CSS class names (`.c`, `.l`)
- No spaces in CSS (`color:#fff`)
- No final semicolons in rules
- Hex color shorthand (`#fff`, `#0ff`)
- Short color names (`red`, `tan`)
- System font stacks (`system-ui`)
- Shorthand properties (`font`, `margin`, `inset`)
- Short content words ("Hi" vs "Hello")

See [v10/OPTIMIZATION.md](v10/OPTIMIZATION.md) for the complete optimization guide.

## Comparison

| Site | Size |
|------|------|
| Average webpage | ~2.5 MB |
| This project (largest) | 1.4 KB |
| This project (smallest) | 348 B |
| **Difference** | **~7,000x smaller** |
