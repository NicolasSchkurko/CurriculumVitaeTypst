# CurriculumVitaeTypst

This repository contains the source code for my personal CV, built using [Typst](https://typst.app/). I have open-sourced it so that other developers can fork the repository, replace my information with their own in `cv.typ`, and use it as a starting point for their own Docs-as-Code resumes.

## Features

* **Docs-as-Code Approach:** Manage your resume like software, enabling full Git version control and trackable iterations.
* **Modular Architecture:** Strict separation between the visual configuration and macros (`blocks.typ`) and the personal data (`cv.typ`).
* **Parametric Design:** Global variables to easily adjust the sidebar color palette, text, and titles from a single control point.
* **Fast Compilation:** Native output to an optimized PDF with millisecond rendering times.

## File Structure

* `cv.typ`: Main file containing the grid layout (32%/68%) and profile content (English).
* `cv-spanish.typ`: Spanish version of the same CV.
* `blocks.typ`: Layout configuration, color variables, and helper functions to automate entry generation.
* `/icons/`: Directory designated for vector icons used in the contact section.
* `userPhoto.jpg`: Profile picture placeholder (replace with your own).

## Usage

1. Install the [Typst CLI](https://github.com/typst/typst) locally or use the Typst web app.
2. Fork or clone this repository.
3. Modify the color palette in `blocks.typ` if desired.
4. Replace the personal data, experience, and projects in `cv.typ`.
5. Update `userPhoto.jpg` with your own profile picture and ensure your SVG icons are in the `/icons/` directory.
6. Compile the document with the Typst CLI:

```bash
typst compile cv.typ cv-english.pdf          # English version
typst compile cv-spanish.typ cv-spanish.pdf  # Spanish version
```

## License

This project is released into the public domain under The Unlicense. Feel free to fork, modify, distribute, and adapt it for your own personal or commercial use without any requirement for attribution. For more information, see the LICENSE file or visit unlicense.org.