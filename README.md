# 1PackageWebsite

Fully functional websites that fit in a single TCP packet.

## Why?

Because we can. The practical TCP payload limit is ~1400 bytes (after IP/TCP headers and Ethernet MTU overhead). These sites prove you can deliver a complete, styled, interactive web experience in one packet.

## Versions

| Version | Size | Gzip | Description |
|---------|------|------|-------------|
| [v1](v1/) | 698 | 486 | Minimal styled page |
| [v2](v2/) | 1400 | 771 | Personal portfolio |
| [v3](v3/) | 1390 | 760 | Web 2.0 + theme toggle |
| [v4](v4/) | 1400 | 780 | Neon cyberpunk animated |
| [v5](v5/) | 1281 | 694 | Retro terminal/DOS |
| [v6](v6/) | 1232 | 667 | Brutalist design |
| [v7](v7/) | 1167 | 635 | Neumorphism soft UI |
| [v8](v8/) | 1054 | 596 | ASCII art landing |
| [v9](v9/) | 1223 | 629 | Tic Tac Toe game |

## Size Check

Run the included script to verify all versions:

```bash
./check-sizes.sh
```

Output:
```
VERSION       RAW     GZIP STATUS
v1            698      486 OK
v2           1400      771 OK
...
All versions within size limit!
```

## Size Constraints

- **Target:** < 1400 bytes (covers most network configurations)
- **Theoretical max:** 64KB (rarely achievable in practice)
- **Ethernet MTU:** 1500 bytes - 20 (IP) - 20-60 (TCP) = ~1400-1460 bytes usable
- **With gzip:** All versions compress to ~500-800 bytes

## Techniques Used

- Minified single-line HTML
- Short CSS class names (`.c`, `.l`, `.s`)
- CSS custom properties for theming
- System font stacks (`system-ui`, `monospace`)
- Shorthand properties (`font`, `margin`, `inset`)
- Hex color shorthand (`#fff`, `#0ff`)
- Omitted optional closing tags (`<li>`, `<p>`)
- CSS-only animations and interactions

## Comparison

| Site | Size |
|------|------|
| Average webpage | ~2.5 MB |
| This project (largest) | 1.4 KB |
| **Difference** | **~1,785x smaller** |
