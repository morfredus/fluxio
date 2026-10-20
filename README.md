# Fluxio

**Status: alpha** · Windows 64-bit · French and English

Fluxio is a standalone Windows application for small shops such as a bar, tobacconist, lottery and betting counter or hotel. Drop in the PDFs you already have: cash-register Z reports, supplier invoices, bank statements and lottery (FDJ) statements. Fluxio reads them, shows what it understood next to the original PDF, and lets you correct anything before you validate.

Once documents are validated it reconciles them: invoices against bank debits, daily card takings against the card batches credited by the bank, cash deposits against bank deposits, and the weekly lottery settlement against the Wednesday debit. It also builds statistics: sales by family and month, lottery results by game, supplier spending and bank movements.

Everything stays on your computer in a local SQLite database: no account, no cloud.

## Download

Get the latest **`Fluxio-<version>-win64-portable.zip`** from the [Releases](../../releases) page, unzip it anywhere and run `Fluxio.exe`. No installation.

- The program is **not code-signed**: Windows SmartScreen may warn on the first run.
- Your data lives in `%APPDATA%\Fluxio\fluxio.db`, outside the program folder: updating never touches it. To back up, copy that file.
- The language (French / English) is chosen in the settings and applied at the next start.

## License

Fluxio is licensed under the **[PolyForm Noncommercial License 1.0.0](LICENSE)**: you may use it for non-commercial purposes (personal use, study, research, charities, schools...). **Commercial use is not allowed** without a separate license from the author. Third-party components keep their own licenses: see [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).

## Source code

The source code is not published. It is **available on request** for non-commercial evaluation: open an issue with the "Source code request" template.

## Feedback

Use the issue templates: bug report, document read wrongly, feature request, documentation, question. **Never attach real PDFs or a real database**: hide names, IBANs and amounts.
