# Fork and modification notice

Redmine Dark was created by Frédéric Aoustin and is available upstream at
https://github.com/fraoustin/redmine_dark. Ilia Lenskii is identified by the
upstream project as its main contributor.

Corporate Finance Institute maintains this public fork as a native Redmine
theme. The first CFI theme release is based on upstream `main` commit
`8026957ae906a6299e2aaecb26c1b8619580881c` and tag `2.0.0`
(`ca15b0783f2c80a65dbd0750ca6e30e878380ae5`).

Modifications made on 2026-08-28:

- converted the repository from a Rails/Redmine plugin into a native theme;
- moved and consolidated the upstream dark styles into
  `stylesheets/application.css`;
- removed plugin registration, Rails hooks, injected assets, the JavaScript
  toggle, and cookie persistence; and
- added Redmine 7.0.1 structure/discovery validation and native-theme
  installation documentation.

The original `LICENSE` file is retained byte-for-byte. This derivative remains
distributed under GNU GPL v2, without warranty.
