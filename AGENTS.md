# CV Project - Jelmer de Hen

Shared rules: /data/p/gcb-agents/README.md

## Build

After making changes to .tex files, always build the CV by running `make build`.
Open the result with `google-chrome-stable jelmerdehen.pdf`.

## Structure

- `jelmerdehen.tex` — main CV source (AltaCV class, XeLaTeX)
- `altacv.cls` — document class (do not modify)
- `jelmerdehen.jpg` — headshot photo (currently commented out for international roles)
- `Makefile` — builds PDF via xelatex + exiftool + qpdf

## Fonts

Montserrat (headings, name) + Lato (body). Requires `otf-montserrat` system package.

## Layout

- Two-column layout via `paracol` (60/40 split)
- Left column: Experience (chronological, newest first)
- Right column: Key Skills, Programming, Languages, Honors & Awards, HackerOne Events
- Target: 2 pages. Watch for Overfull hbox warnings — Montserrat is wide.

## Style decisions

- No star/dot ratings for skills or languages — use `\cvtag{}` tags instead
- Skills and programming languages listed alphabetically
- Honors & Awards in reverse chronological order (newest first)
- Photo is commented out for international/US-facing roles. Uncomment `\photoR{2.8cm}{jelmerdehen.jpg}` for European roles.
- Use `\textperiodcentered{}` for the dot in "Company · Contract"
- Keep bullet points concise — achievements over task descriptions
- Don't list languages/tools you wouldn't confidently use in an interview

## CV environment variable

`make build` supports `CV=name` to target a specific .tex file. Default is `jelmerdehen`.

## Key facts for content

- 15+ years security experience
- CVE-2019-20613 (Samsung Contacts SQLi, CVSS 8.1)
- Samsung research covered Android devices, Knox MDM, and SSO infrastructure
- Led Android R&D at Trail of Bits / iVerify (spyware detection)
- Current contracts: Radically Open Security, Cure53
- Own company: General Cyber Ballistics (2014–present)
- HackerOne: 5 live events, 1st place H1-702 2018 (team)
- Hall of Fames: Google, Mozilla, Samsung, Salesforce
- GitHub: github.com/JelmerDeHen (Go-heavy, skynet security platform in Python)
