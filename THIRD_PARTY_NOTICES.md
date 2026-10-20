# Third-party components / Composants tiers

Fluxio itself is licensed under the **PolyForm Noncommercial License 1.0.0** (see `LICENSE`). That license does **not** apply to the
third-party components below, which keep their own licenses. / Fluxio est sous licence PolyForm Noncommercial 1.0.0 (voir `LICENSE`) ;
cette licence ne s'applique pas aux composants tiers ci-dessous, qui gardent leurs propres licences.

| Component | Use | License |
|---|---|---|
| **Qt for Python (PySide6)** and **Qt** | graphical interface, PDF viewer | LGPL-3.0 (GNU Lesser General Public License v3) |
| **pypdf** | reading the text of PDF files | BSD-3-Clause |
| **PyInstaller** | builds the executable (its bootloader is bundled) | GPL-2.0-or-later with the PyInstaller exception, which allows bundling in programs under any license |
| **Python** | runtime | PSF License |
| **SQLite** | local database | Public domain |

## Qt (LGPL-3.0): your rights / vos droits

The portable build of Fluxio uses Qt libraries under the GNU Lesser General Public License version 3. In the zip, the Qt libraries are
separate files (`.dll`, in the `_internal` folder), not merged into `Fluxio.exe`: you may replace them with another compatible build of
the same Qt version, and you may also modify them under the LGPL. The text of the license is at
<https://www.gnu.org/licenses/lgpl-3.0.html>. The Qt for Python (PySide6) and Qt source code is available at
<https://code.qt.io/> and <https://download.qt.io/>.

Le zip portable utilise les bibliothèques Qt sous licence LGPL v3. Elles sont fournies sous forme de fichiers séparés (`.dll`, dossier
`_internal`), non fusionnées dans `Fluxio.exe` : vous pouvez les remplacer par une autre compilation compatible de la même version de Qt.
Le code source de Qt et de PySide6 est disponible aux adresses ci-dessus.

## Python packages / bibliothèques Python

`pypdf` (BSD-3-Clause): Copyright (c) Mathieu Fenniak and the pypdf contributors. The license texts of the Python packages are on
their project pages (PyPI / GitHub). / Les textes de licence des bibliothèques Python sont sur leurs pages de projet (PyPI / GitHub).
