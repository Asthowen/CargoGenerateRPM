<!--suppress HtmlDeprecatedAttribute -->
<h1 align="center">
  CargoGenerateRPM
</h1>
<p align="center">
    <a>
        <img src="https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white" alt="GitHub Actions">
    </a>
    <a href="https://github.com/Asthowen/CargoGenerateRPM">
        <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Use git">
    </a>
    <br>
    <a href="https://github.com/Asthowen/CargoGenerateRPM/blob/main/LICENSE">
        <img src="https://img.shields.io/github/license/Asthowen/CargoGenerateRPM?style=for-the-badge" alt="License">
    </a>
    <a href="https://github.com/Asthowen/CargoGenerateRPM">
        <img src="https://img.shields.io/github/stars/Asthowen/CargoGenerateRPM?style=for-the-badge" alt="Stars">
    </a>
</p>
<h3 align="center">
    <strong>This action allows to generate .rpm files with the cargo-generate-rpm tool.</strong>
</h3>

## Output
The .rpm package is located in the folder `target/generate-rpm/<RPM FILE>`.

## Example Usage
```yaml
name: Build rpm package

on:
  push:
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2

      - name: Build .rpm
        uses: asthowen/CargoGenerateRPM@main
```

## License
**[CargoGenerateRPM](https://github.com/Asthowen/CargoGenerateRPM) | [GNU General Public License v3.0](https://github.com/Asthowen/CargoGenerateRPM/blob/main/LICENSE)**