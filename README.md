# 1PackageWebsite

Fully functional websites that fit in a single TCP packet.

## Why?

Because we can. The practical TCP payload limit is ~1400 bytes (after IP/TCP headers and Ethernet MTU overhead). These sites prove you can deliver a complete, styled, interactive web experience in one packet.

## Versions

| Version | Size | Description |
|---------|------|-------------|
| [v1](v1/) | 698 bytes | Minimal styled page with heading, list, and link |
| [v2](v2/) | 1400 bytes | Personal portfolio with about, skills, projects, contact |
| [v3](v3/) | 1390 bytes | Web 2.0 design with dark/neon theme toggle |
| [v4](v4/) | 1400 bytes | Neon cyberpunk with animated gradients and glassmorphism |

## Size Constraints

- **Target:** < 1400 bytes (covers most network configurations)
- **Theoretical max:** 64KB (rarely achievable in practice)
- **Ethernet MTU:** 1500 bytes - 20 (IP) - 20-60 (TCP) = ~1400-1460 bytes usable

## Techniques Used

- Minified single-line HTML
- Short CSS class names (`.c`, `.l`, `.s`)
- CSS custom properties for theming
- System font stacks (`system-ui`)
- Shorthand properties (`font`, `margin`, `padding`)
- Hex color shorthand (`#fff`, `#0ff`)
- Omitted optional closing tags (`<li>`, `<p>`)
