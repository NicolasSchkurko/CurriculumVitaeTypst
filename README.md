# CurriculumVitaeTypst

My CV, written as code with [Typst](https://typst.app/). Open-sourced so anyone can fork it, replace the content and use it as a starting point.

Two layouts, one source of truth: an **ATS** version that a parser can read and a **classic** version for a human. Both render from the same content files, so they cannot drift apart.

| | ATS | Classic |
|---|---|---|
| File | `cv-ats.typ` / `cv-ats-spanish.typ` | `cv.typ` / `cv-spanish.typ` |
| Layout | one column, plain text | dark sidebar, photo, icons |
| Hyphenation | off | off |
| Photo / icons / colour | none | yes |
| Built for | Greenhouse, Lever, Workday, Taleo | a person reading the PDF |

## Why an ATS version exists

Many applications are screened by a parser before a human ever opens the PDF. The previous single version of this CV broke three of those parsers:

| Problem | What the parser saw |
|---|---|
| Hyphenation at line ends | `Anth-ropic`, `JavaS-cript`, `Big-Query` (keywords split in two) |
| Two-column layout with a dark sidebar | Content read out of order; sections merged |
| Name split across two lines | Only the first line captured as the candidate name |
| Declared font not installed | Rendered in a fallback on some machines, layout shifts between builds |

The ATS template fixes all four structurally:

- **One column**, no tables, no text boxes, no background shapes.
- **No hyphenation** — no word is ever cut at a line end.
- **Left-aligned** — no justified text, no rivers of spaces.
- **Arial, embedded**, so the PDF builds identically everywhere.
- **One language per document** (`lang: "en"` / `lang: "es"`).
- **Name and contact as plain text**, readable without any styling.
- **No photo** — optional in Argentina, a liability for US/EU screening.
- **One page** — checked on every build.

The classic template keeps the same content and the same rules (no hyphenation, left-aligned, one page), only with the sidebar and the photo.

## File structure

```
content-en.typ        All CV content, English (profile, experience, projects, skills, education)
content-es.typ        All CV content, Spanish
blocks.typ            Both layouts: ats() and classic(), plus the entry/role/project macros

cv.typ                Driver -> classic(data-en)        -> cv-english.pdf
cv-spanish.typ        Driver -> classic(data-es)        -> cv-spanish.pdf
cv-ats.typ            Driver -> ats(data-en)            -> cv-ats-english.pdf
cv-ats-spanish.typ    Driver -> ats(data-es)            -> cv-ats-spanish.pdf

icons/                SVG icons (classic only)
userPhoto.jpg         Profile photo (classic only)
```

The drivers are four lines each. To edit the CV, edit `content-en.typ` or `content-es.typ` — never the drivers.

## Usage

1. Install the [Typst CLI](https://github.com/typst/typst).
2. Fork or clone this repository.
3. Replace the dictionaries in `content-en.typ` / `content-es.typ` with your own.
4. Compile:

```bash
typst compile cv.typ cv-english.pdf
typst compile cv-spanish.typ cv-spanish.pdf
typst compile cv-ats.typ cv-ats-english.pdf
typst compile cv-ats-spanish.typ cv-ats-spanish.pdf
```

Rebuild on every save:

```bash
typst watch cv.typ cv-english.pdf
```

## Notes on the layout code

Two Typst details that silently break a CV and are avoided on purpose:

- `block(spacing: 0pt)` collapses the space between consecutive blocks, so a job title ends up printed on top of the role line. Spacing here always goes through `above`/`below` or `v()`.
- `align(right + horizon)` shifts the cell down past its row: dates drift onto the next line. Dates use `align: (left, right)` on the grid instead.

## Before sending a CV

- One page, no exceptions for less than ten years of experience.
- Every claim survives a follow-up question. No tool listed that you have not actually used.
- One title across CV, LinkedIn and portfolio.
- Employment dates identical everywhere.
- No numbers you cannot explain (a metric you cannot defend is worse than no metric).
- Send the ATS file to any application that goes through a form. Keep the classic one for people who ask for it directly.

## License

Released into the public domain under [The Unlicense](LICENSE). Fork it, modify it, ship it.
