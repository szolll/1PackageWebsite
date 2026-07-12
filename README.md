# 1PackageWebsite

**Fully functional websites that fit in a single TCP packet.**

35 hand-optimized static sites — every one delivered in the first ~1500-byte TCP segment, so the whole page arrives in a *single* round trip. No frameworks, no build step, no external requests. Just HTML.

[![Optimization Audit](https://github.com/szolll/1PackageWebsite/actions/workflows/audit.yml/badge.svg)](https://github.com/szolll/1PackageWebsite/actions/workflows/audit.yml)

## Why a single packet?

A fresh TCP connection delivers its first useful payload in one ~1460-byte segment. Keep the whole document under that and the browser can paint a complete page after a single round trip — before the connection even ramps up. Every site here caps raw HTML at **1400 bytes** to stay comfortably inside that budget.

- **Smallest:** `v1` at 682 b — Minimal
- **Largest:** `v34` at 1344 b — Number Guess
- **Self-contained:** inline CSS/JS, no fonts, no images, no CDN, no JS frameworks.

## Gallery

### Dark 2025 Themes

<table>
<tr><td align="center" width="33%"><a href="v26/"><img src="screenshots/v26.png" width="260" alt="v26"><br><sub><b>v26</b> · Split<br>741 b</sub></a></td><td align="center" width="33%"><a href="v29/"><img src="screenshots/v29.png" width="260" alt="v29"><br><sub><b>v29</b> · Grid<br>856 b</sub></a></td><td align="center" width="33%"><a href="v30/"><img src="screenshots/v30.png" width="260" alt="v30"><br><sub><b>v30</b> · Type<br>872 b</sub></a></td></tr>
<tr><td align="center" width="33%"><a href="v27/"><img src="screenshots/v27.png" width="260" alt="v27"><br><sub><b>v27</b> · Glow<br>878 b</sub></a></td><td align="center" width="33%"><a href="v28/"><img src="screenshots/v28.png" width="260" alt="v28"><br><sub><b>v28</b> · Line<br>912 b</sub></a></td><td align="center" width="33%"><a href="v25/"><img src="screenshots/v25.png" width="260" alt="v25"><br><sub><b>v25</b> · Mono<br>963 b</sub></a></td></tr>
<tr><td align="center" width="33%"><a href="v20/"><img src="screenshots/v20.png" width="260" alt="v20"><br><sub><b>v20</b> · Link in Bio<br>987 b</sub></a></td><td align="center" width="33%"><a href="v17/"><img src="screenshots/v17.png" width="260" alt="v17"><br><sub><b>v17</b> · Noir Studio<br>1082 b</sub></a></td><td align="center" width="33%"><a href="v21/"><img src="screenshots/v21.png" width="260" alt="v21"><br><sub><b>v21</b> · macOS Term<br>1084 b</sub></a></td></tr>
<tr><td align="center" width="33%"><a href="v12/"><img src="screenshots/v12.png" width="260" alt="v12"><br><sub><b>v12</b> · AI Startup<br>1090 b</sub></a></td><td align="center" width="33%"><a href="v18/"><img src="screenshots/v18.png" width="260" alt="v18"><br><sub><b>v18</b> · Dots<br>1116 b</sub></a></td><td align="center" width="33%"><a href="v24/"><img src="screenshots/v24.png" width="260" alt="v24"><br><sub><b>v24</b> · Wave<br>1143 b</sub></a></td></tr>
<tr><td align="center" width="33%"><a href="v23/"><img src="screenshots/v23.png" width="260" alt="v23"><br><sub><b>v23</b> · Stack<br>1150 b</sub></a></td><td align="center" width="33%"><a href="v13/"><img src="screenshots/v13.png" width="260" alt="v13"><br><sub><b>v13</b> · Glass<br>1153 b</sub></a></td><td align="center" width="33%"><a href="v22/"><img src="screenshots/v22.png" width="260" alt="v22"><br><sub><b>v22</b> · Grain<br>1164 b</sub></a></td></tr>
<tr><td align="center" width="33%"><a href="v11/"><img src="screenshots/v11.png" width="260" alt="v11"><br><sub><b>v11</b> · Bento<br>1210 b</sub></a></td><td align="center" width="33%"><a href="v15/"><img src="screenshots/v15.png" width="260" alt="v15"><br><sub><b>v15</b> · Mesh<br>1235 b</sub></a></td><td align="center" width="33%"><a href="v14/"><img src="screenshots/v14.png" width="260" alt="v14"><br><sub><b>v14</b> · Dev Card<br>1255 b</sub></a></td></tr>
<tr><td align="center" width="33%"><a href="v19/"><img src="screenshots/v19.png" width="260" alt="v19"><br><sub><b>v19</b> · Profile<br>1306 b</sub></a></td><td align="center" width="33%"><a href="v16/"><img src="screenshots/v16.png" width="260" alt="v16"><br><sub><b>v16</b> · Cyberpunk<br>1341 b</sub></a></td></tr>
</table>

### Dark Classic

<table>
<tr><td align="center" width="33%"><a href="v10/"><img src="screenshots/v10.png" width="260" alt="v10"><br><sub><b>v10</b> · Jumbled<br>895 b</sub></a></td><td align="center" width="33%"><a href="v8/"><img src="screenshots/v8.png" width="260" alt="v8"><br><sub><b>v8</b> · ASCII<br>993 b</sub></a></td><td align="center" width="33%"><a href="v5/"><img src="screenshots/v5.png" width="260" alt="v5"><br><sub><b>v5</b> · Terminal<br>1202 b</sub></a></td></tr>
<tr><td align="center" width="33%"><a href="v3/"><img src="screenshots/v3.png" width="260" alt="v3"><br><sub><b>v3</b> · Web 2.0<br>1323 b</sub></a></td><td align="center" width="33%"><a href="v4/"><img src="screenshots/v4.png" width="260" alt="v4"><br><sub><b>v4</b> · Neon<br>1327 b</sub></a></td></tr>
</table>

### Light Themes

<table>
<tr><td align="center" width="33%"><a href="v1/"><img src="screenshots/v1.png" width="260" alt="v1"><br><sub><b>v1</b> · Minimal<br>682 b</sub></a></td><td align="center" width="33%"><a href="v7/"><img src="screenshots/v7.png" width="260" alt="v7"><br><sub><b>v7</b> · Soft UI<br>1075 b</sub></a></td><td align="center" width="33%"><a href="v6/"><img src="screenshots/v6.png" width="260" alt="v6"><br><sub><b>v6</b> · Brutalist<br>1150 b</sub></a></td></tr>
<tr><td align="center" width="33%"><a href="v2/"><img src="screenshots/v2.png" width="260" alt="v2"><br><sub><b>v2</b> · Portfolio<br>1306 b</sub></a></td></tr>
</table>

### Games

<table>
<tr><td align="center" width="33%"><a href="v32/"><img src="screenshots/v32.png" width="260" alt="v32"><br><sub><b>v32</b> · Reaction<br>1065 b</sub></a></td><td align="center" width="33%"><a href="v31/"><img src="screenshots/v31.png" width="260" alt="v31"><br><sub><b>v31</b> · Clicker<br>1084 b</sub></a></td><td align="center" width="33%"><a href="v9/"><img src="screenshots/v9.png" width="260" alt="v9"><br><sub><b>v9</b> · Tic Tac Toe<br>1155 b</sub></a></td></tr>
<tr><td align="center" width="33%"><a href="v35/"><img src="screenshots/v35.png" width="260" alt="v35"><br><sub><b>v35</b> · Rock Paper Scissors<br>1167 b</sub></a></td><td align="center" width="33%"><a href="v33/"><img src="screenshots/v33.png" width="260" alt="v33"><br><sub><b>v33</b> · Memory<br>1182 b</sub></a></td><td align="center" width="33%"><a href="v34/"><img src="screenshots/v34.png" width="260" alt="v34"><br><sub><b>v34</b> · Number Guess<br>1344 b</sub></a></td></tr>
</table>

## All versions by size

<details><summary><b>Dark 2025 Themes</b></summary>

| Version | Bytes | Style |
|---------|------:|-------|
| [v26](v26/) | 741 | Split |
| [v29](v29/) | 856 | Grid |
| [v30](v30/) | 872 | Type |
| [v27](v27/) | 878 | Glow |
| [v28](v28/) | 912 | Line |
| [v25](v25/) | 963 | Mono |
| [v20](v20/) | 987 | Link in Bio |
| [v17](v17/) | 1082 | Noir Studio |
| [v21](v21/) | 1084 | macOS Term |
| [v12](v12/) | 1090 | AI Startup |
| [v18](v18/) | 1116 | Dots |
| [v24](v24/) | 1143 | Wave |
| [v23](v23/) | 1150 | Stack |
| [v13](v13/) | 1153 | Glass |
| [v22](v22/) | 1164 | Grain |
| [v11](v11/) | 1210 | Bento |
| [v15](v15/) | 1235 | Mesh |
| [v14](v14/) | 1255 | Dev Card |
| [v19](v19/) | 1306 | Profile |
| [v16](v16/) | 1341 | Cyberpunk |

</details>

<details><summary><b>Dark Classic</b></summary>

| Version | Bytes | Style |
|---------|------:|-------|
| [v10](v10/) | 895 | Jumbled |
| [v8](v8/) | 993 | ASCII |
| [v5](v5/) | 1202 | Terminal |
| [v3](v3/) | 1323 | Web 2.0 |
| [v4](v4/) | 1327 | Neon |

</details>

<details><summary><b>Light Themes</b></summary>

| Version | Bytes | Style |
|---------|------:|-------|
| [v1](v1/) | 682 | Minimal |
| [v7](v7/) | 1075 | Soft UI |
| [v6](v6/) | 1150 | Brutalist |
| [v2](v2/) | 1306 | Portfolio |

</details>

<details><summary><b>Games</b></summary>

| Version | Bytes | Style |
|---------|------:|-------|
| [v32](v32/) | 1065 | Reaction |
| [v31](v31/) | 1084 | Clicker |
| [v9](v9/) | 1155 | Tic Tac Toe |
| [v35](v35/) | 1167 | Rock Paper Scissors |
| [v33](v33/) | 1182 | Memory |
| [v34](v34/) | 1344 | Number Guess |

</details>

## Size check

```bash
./check-sizes.sh
```

Reports raw + gzip bytes per version and fails if any `index.html` exceeds 1400 bytes.

## CI/CD

GitHub Actions audits every version on each push:

- Raw HTML under **1400 bytes**
- `viewport` meta tag present
- No redundant structure tags (`<html>`, `<head>`, `</body>`)
- No `transparent` keyword (use `#0000`)

## Optimization guide

See **[OPTIMIZATION.md](OPTIMIZATION.md)** for the full byte-squeezing playbook. Highlights:

- Omit optional tags (`<html>`, `<head>`, `<body>`)
- Drop quotes on simple attributes: `class=x`
- `display:grid;place-items:center` (~20 b cheaper than flex centering)
- Short hex: `#fff`, `#0000`
- `height:100vh` instead of `min-height`
- Protocol-relative URLs: `//example.com`

## Usage

```bash
./serve.sh        # serve on http://localhost:8000
./serve.sh 3000   # or a custom port
```

